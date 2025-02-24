from dataclasses import dataclass
from models import Color, Decision
from dart_sanitize import dart_function_name, dart_color


@dataclass
class Result:
    colors: list[Color]
    decisions: list[Decision]


@dataclass
class Association:
    decision_name: str
    color_name: str
    color_hex: str


@dataclass
class ExtractedAssociation:
    light: list[Association]
    dark: list[Association]


#
# Extract

def extract(json: dict) -> Result:
    colors = extract_colors(json)
    associations = extract_associations(json)
    fix_associations(associations, colors)
    decisions = extract_decisions(associations, colors)

    return Result(
        colors=filter_unique_colors(colors),
        decisions=decisions
    )

#
# Colors


def extract_colors(json: dict) -> list[Color]:
    light_colors = extract_light_colors(json)
    dark_colors = extract_dark_colors(json)
    return light_colors + dark_colors


def extract_light_colors(json: dict) -> list[Color]:
    light_options = json["color"]["light"]["decisions"]["options"]
    return extract_leaf_objects(light_options, create_color)


def extract_dark_colors(json: dict) -> list[Color]:
    dark_options = json["color"]["dark"]["options"]
    return extract_leaf_objects(dark_options, create_color)


def create_color(key: str, json_object: dict) -> Color:
    return Color(
        name=dart_function_name(key),
        hex=dart_color(json_object["value"])
    )

#
# Associations


def extract_associations(json: dict) -> ExtractedAssociation:
    light_decisions = json["color"]["light"]["decisions"]
    light_decisions["options"] = None
    dark_decisions = json["color"]["dark"]["decisions"]
    dark_decisions["options"] = None

    light_associations = extract_leaf_objects(
        light_decisions, create_association
    )
    dark_associations = extract_leaf_objects(
        dark_decisions, create_association
    )

    assert len(light_associations) == len(dark_associations)

    return ExtractedAssociation(light=light_associations, dark=dark_associations)


def create_association(key: str, json_object: dict) -> Association:
    return Association(
        decision_name=dart_function_name(key),
        color_name=dart_function_name(json_object["description"]),
        color_hex=dart_color(json_object["value"])
    )

#
# Decisions


def extract_decisions(associations: ExtractedAssociation, colors: list[Color]) -> list[Decision]:
    light_dict = convert_to_dict(associations.light)
    dark_dict = convert_to_dict(associations.dark)
    return merge_associations(light_dict, dark_dict, colors)


def convert_to_dict(associations: list[Association]) -> dict:
    return {association.decision_name: association.color_name for association in associations}


def merge_associations(light_dict: dict, dark_dict: dict, colors: list[Color]) -> list[Decision]:
    decisions = []
    for name in light_dict.keys():
        decisions.append(Decision(
            name=name,
            light_color_name=light_dict[name],
            dark_color_name=dark_dict[name]
        ))
    return decisions

#
# Utils


def extract_leaf_objects(json_object: dict, create) -> list:
    leafs = []
    if isinstance(json_object, dict):
        for key, value in json_object.items():
            if isinstance(value, dict):
                if is_color_leaf(value):
                    leaf = create(key=key, json_object=value)
                    leafs.append(leaf)
                else:
                    leafs.extend(extract_leaf_objects(value, create))
    return leafs


def is_color_leaf(json_object: dict) -> bool:
    return json_object.get("type") == "color"


def filter_unique_colors(colors: list[Color]) -> list[Color]:
    return list({color.name: color for color in colors}.values())


#
# Correction

def fix_associations(associations: ExtractedAssociation, colors: list[Color]):
    def fix(associations: list[Association], colors: list[Color], theme: str):
        for association in associations:
            fix_association(association, colors, theme)

    fix(associations.light, colors, "Light")
    fix(associations.dark, colors, "Dark")


def fix_association(association: Association, colors: list[Color], theme: str):
    if is_empty_name(association.color_name):
        color_name = find_color_name_by_hex(
            colors,
            association.color_hex
        )

        if is_empty_name(color_name):
            color = create_missing_color(association, theme)
            colors.append(color)
            color_name = color.name
            print(f"Created: {color}")

        association.color_name = color_name
        print(f"Fixed: {association}")


def find_color_name_by_hex(colors: list[Color], hex: str) -> str:
    for color in colors:
        if color.hex == hex:
            return color.name
    return ""


def is_empty_name(name: str) -> bool:
    return name is None or name == ""


def create_missing_color(association: Association, theme: str) -> Color:
    color_name = f"createdForMissingDecision{theme}{association.decision_name}"
    return Color(
        name=color_name,
        hex=association.color_hex
    )
