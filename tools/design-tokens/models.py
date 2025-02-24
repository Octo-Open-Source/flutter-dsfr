from dataclasses import dataclass


@dataclass
class Color:
    name: str
    hex: str


@dataclass
class Decision:
    name: str
    light_color_name: str
    dark_color_name: str
