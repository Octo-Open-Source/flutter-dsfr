
def dart_function_name(dsfr_color_name: str) -> str:
    name = dsfr_color_name.replace('$', '').replace('🔒', '').replace('_', '-')
    name = ''.join(
        word.capitalize()
        if i != 0 else word for i,
        word in enumerate(name.split('-'))
    )
    return name.strip()


def dart_color(dsfr_hex: str) -> str:
    hex = dsfr_hex.replace("#", "")
    alpha = hex[-2:]
    hex = hex[:-2]
    return f"Color(0x{alpha}{hex})"
