from models import Color, Decision


#
# Colors


def template_colors_dart() -> str:
    return """
import 'dart:ui';

class DsfrColors {
  const DsfrColors._();

  <%COLORS%>
}
    """.strip()


def dart_color_functions(color: Color) -> str:
    return f"""
    static const {color.name} = {color.hex};
    """


def generate_dart_colors(colors: list[Color]) -> str:
    colors_dart = [dart_color_functions(color) for color in colors]
    colors_dart_str = "".join(colors_dart)
    return template_colors_dart().replace("<%COLORS%>", colors_dart_str)

#
# Decisions


def template_decisions_dart() -> str:
    return """
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/colors.g.dart';
import 'package:flutter_dsfr/helpers/theme_mode_provider.dart';

class DsfrColorDecisions {
  const DsfrColorDecisions._();

  static bool isLightMode(BuildContext context) {
    final provider = ThemeModeProvider.of(context);
    assert(provider != null, "Make sure you have a ThemeModeProvider at the top of your widget tree.");
    return provider?.isLightMode ?? true;
  }

  <%DECISIONS%>
}
    """.strip()


def dart_decision_functions(decision: Decision) -> str:
    return f"""
    static Color {decision.name}(BuildContext context) {{
        return isLightMode(context) ? DsfrColors.{decision.light_color_name} : DsfrColors.{decision.dark_color_name};
    }}
    """


def generate_dart_decisions(decisions: list[Decision]) -> str:
    decisions_dart = [
        dart_decision_functions(decision) for decision in decisions
    ]
    decisions_dart_str = "".join(decisions_dart)
    return template_decisions_dart().replace("<%DECISIONS%>", decisions_dart_str)
