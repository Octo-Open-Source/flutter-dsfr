from file import read_as_json, write_dart_file
from extract_figma import extract
from generate import generate_dart_colors, generate_dart_decisions, generate_dart_colors_example

DESIGN_TOKENS_FILE = "./tools/design-tokens/design-tokens.json"
OUTPUT_LIB_PATH = "./lib/fondamentaux/"
OUTPUT_EXAMPLE_PATH = "./example/lib/colors/"


def main():
    json = read_as_json(DESIGN_TOKENS_FILE)

    extracted_data = extract(json)

    dart_colors = generate_dart_colors(extracted_data.colors)
    dart_decisions = generate_dart_decisions(extracted_data.decisions)
    dart_examples = generate_dart_colors_example(extracted_data.colors)

    write_dart_file(dart_colors, OUTPUT_LIB_PATH + "colors.g.dart")
    write_dart_file(dart_decisions, OUTPUT_LIB_PATH + "color_decisions.g.dart")
    write_dart_file(dart_examples, OUTPUT_EXAMPLE_PATH + "all_colors.g.dart")


if __name__ == "__main__":
    main()
