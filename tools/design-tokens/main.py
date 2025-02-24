from file import read_as_json, write_dart_file
from extract_figma import extract
from generate import generate_dart_colors, generate_dart_decisions

DESIGN_TOKENS_FILE = "./scripts/design-tokens/design-tokens.json"
OUTPUT_PATH = "./lib/fondamentaux/"


def main():
    json = read_as_json(DESIGN_TOKENS_FILE)

    extracted_data = extract(json)

    dart_colors = generate_dart_colors(extracted_data.colors)
    dart_decisions = generate_dart_decisions(extracted_data.decisions)

    write_dart_file(dart_colors, OUTPUT_PATH + "colors.g.dart")
    write_dart_file(dart_decisions, OUTPUT_PATH + "color_decisions.g.dart")


if __name__ == "__main__":
    main()
