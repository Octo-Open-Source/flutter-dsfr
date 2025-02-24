from dataclasses import dataclass
import requests
from bs4 import BeautifulSoup
import os


# Constants

DESIGN_SYSTEM_URL = "https://www.systeme-de-design.gouv.fr"
PALETTE_PATH = "/fondamentaux/couleurs-palette"
DECISION_PATH = "/fondamentaux/couleurs-utilisation-dans-le-dsfr"

NOMBRE_DE_IFRAME = 4
NOMBRE_DE_COULEURS = 293
NOMBRE_DE_DECISIONS = 30


# Dataclasses


@dataclass
class Couleur:
    nom: str
    normal_hex: str
    hover_hex: str
    active_hex: str


@dataclass
class Decision:
    nom: str
    light: str
    dark: str


# HTTP Fetching


def fetch(url: str) -> str:
    response = requests.get(url)
    response.raise_for_status()
    return response.text


# Parsing Palette

def parse_palette(html: str) -> list[Couleur]:
    soup = BeautifulSoup(html, "html.parser")
    iframes = soup.find_all("iframe")

    assert len(iframes) == NOMBRE_DE_IFRAME

    couleurs = []

    for iframe in iframes:
        src = iframe["src"]
        couleurs.extend(parse_palette_iframe(src))

    return couleurs


def parse_hex_color_from_style(div):
    return div["style"].split("#")[1].strip()


def parse_palette_iframe(path: str) -> list[Couleur]:
    html = fetch(DESIGN_SYSTEM_URL + path)
    soup = BeautifulSoup(html, "html.parser")

    box_samples = soup.find_all("div", class_="box-sample")

    couleurs = []

    for box_sample in box_samples:
        name = box_sample.select("p b")[0].get_text()
        normal = parse_hex_color_from_style(box_sample)

        color_states = box_sample.find_all(
            "div",
            class_="color-box-sample--sm"
        )

        hover = parse_hex_color_from_style(color_states[0])
        active = parse_hex_color_from_style(color_states[1])

        couleur = Couleur(name, normal, hover, active)
        couleurs.append(couleur)

    return couleurs


def filter_unique(couleurs: list[Couleur]) -> list[Couleur]:
    return list({couleur.nom: couleur for couleur in couleurs}.values())

# Parsing Palette de décision


def parse_decisions(html: str) -> list[Decision]:
    soup = BeautifulSoup(html, "html.parser")
    decisions_tr = soup.select("tbody tr")

    decisions = [parse_decision(tr) for tr in decisions_tr]

    return decisions


def parse_decision(tr) -> Decision:
    nom = tr.select("td")[1].get_text()
    light = tr.select("td")[2].get_text()
    dark = tr.select("td")[3].get_text()
    return Decision(nom, light, dark)


# Generation

def convert_to_dart_convention(dsfr_color_name: str) -> str:
    dsfr_color_name = dsfr_color_name.replace('$', '')
    return ''.join(
        word.capitalize()
        if i != 0 else word for i,
        word in enumerate(dsfr_color_name.split('-'))
    )


# Generation Palette


def template_palette_dart() -> str:
    return """
import 'dart:ui';

class DsfrColors {
  const DsfrColors._();

  <%COULEURS%>

  // Missing from the palette website
  static const blueFrance113 = Color(0xFF00008F);
  static const blueFrance113Active = Color(0xFF2424FF);
  static const blueFrance113Hover = Color(0xFF1414FF);
  static const focus525 = Color(0xFF0A76F6);
}
    """.strip()


def dart_palette_functions(couleur: Couleur) -> str:
    camel_case_nom = convert_to_dart_convention(couleur.nom)
    return f"""
    static const {camel_case_nom} = Color(0xFF{couleur.normal_hex});
    static const {camel_case_nom}Hover = Color(0xFF{couleur.hover_hex});
    static const {camel_case_nom}Active = Color(0xFF{couleur.active_hex});
    """


def generate_dart_palette(couleurs: list[Couleur]) -> str:
    couleurs_dart = [dart_palette_functions(couleur) for couleur in couleurs]
    couleurs_dart_str = "".join(couleurs_dart)
    return template_palette_dart().replace("<%COULEURS%>", couleurs_dart_str)

# Generation Palette de décision


def template_decisions_dart() -> str:
    return """
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/colors.g.dart';

class DsfrColorDecisions {
  const DsfrColorDecisions._();

  static bool isLightMode(BuildContext context) {
    return MediaQuery.platformBrightnessOf(context) == Brightness.light;
  }

  <%DECISIONS%>
}
    """.strip()


def dart_decision_functions(decision: Decision) -> str:
    dart_name = convert_to_dart_convention(decision.nom)
    dart_light = convert_to_dart_convention(decision.light)
    dart_dark = convert_to_dart_convention(decision.dark)
    return f"""
    static Color {dart_name}(BuildContext context) {{
        return isLightMode(context) ? DsfrColors.{dart_light} : DsfrColors.{dart_dark};
    }}
    static Color {dart_name}Hover(BuildContext context) {{
        return isLightMode(context) ? DsfrColors.{dart_light}Hover : DsfrColors.{dart_dark}Hover;
    }}
    static Color {dart_name}Active(BuildContext context) {{
        return isLightMode(context) ? DsfrColors.{dart_light}Active : DsfrColors.{dart_dark}Active;
    }}
    """


def generate_dart_decisions(decisions: list[Decision]) -> str:
    decisions_dart = [dart_decision_functions(
        decision) for decision in decisions]
    decisions_dart_str = "".join(decisions_dart)
    return template_decisions_dart().replace("<%DECISIONS%>", decisions_dart_str)


# File


def write_dart_file(content: str, filename: str):
    path = f"./lib/fondamentaux/{filename}.g.dart"
    with open(path, "w") as file:
        file.write(content)
        os.system(f"dart format \"{path}\" -l 120")


# Main

def import_couleurs():
    palette_html = fetch(DESIGN_SYSTEM_URL + PALETTE_PATH)

    couleurs = parse_palette(palette_html)
    assert len(couleurs) == NOMBRE_DE_COULEURS

    couleurs = filter_unique(couleurs)

    dart = generate_dart_palette(couleurs)
    write_dart_file(content=dart, filename="colors")

    print(f"{len(couleurs)} ({len(couleurs)*3}) couleurs générées.")


def import_decisions():
    decisions_html = fetch(DESIGN_SYSTEM_URL + DECISION_PATH)
    decisions = parse_decisions(decisions_html)
    assert len(decisions) == NOMBRE_DE_DECISIONS

    dart = generate_dart_decisions(decisions)
    write_dart_file(content=dart, filename="color_decisions")

    print(f"{len(decisions)} décisions générées.")


def main():
    import_couleurs()
    import_decisions()


if __name__ == "__main__":
    main()
