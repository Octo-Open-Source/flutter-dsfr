// ignore_for_file: prefer_using_color_decision

import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/colors.g.dart';

extension DsfrColorDecisionsExtension on DsfrColorDecisions {
  static Color backgroundGlycine(BuildContext context) {
    return DsfrColorDecisions.isLightMode(context) ? DsfrColors.purpleGlycineSun319 : DsfrColors.purpleGlycineMoon630;
  }

  static Color focus525(BuildContext context) {
    return DsfrColors.focus525;
  }
}
