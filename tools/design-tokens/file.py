import json
import os


def read_as_json(path: str):
    with open(path, "r") as f:
        return json.load(f)


def write_dart_file(content: str, path: str):
    with open(path, "w") as file:
        file.write(content)
        os.system(f"dart format \"{path}\" -l 120")
