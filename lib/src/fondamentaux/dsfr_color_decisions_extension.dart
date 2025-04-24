// ignore_for_file: prefer_using_color_decision

import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_colors.g.dart';

extension DsfrColorDecisionsExtension on DsfrColorDecisions {
  static Color backgroundPurpleGlycineLow(BuildContext context) {
    return DsfrColorDecisions.isLightMode(context) ? DsfrColors.purpleGlycineSun319 : DsfrColors.purpleGlycineMoon630;
  }

  static Color backgroundPurpleGlycineLowHover(BuildContext context) {
    return DsfrColorDecisions.isLightMode(context)
        ? DsfrColors.purpleGlycineSun319Hover
        : DsfrColors.purpleGlycineMoon630Hover;
  }

  static Color backgroundPurpleGlycineHigh(BuildContext context) {
    return DsfrColorDecisions.isLightMode(context) ? DsfrColors.purpleGlycine925 : DsfrColors.purpleGlycine125;
  }

  static Color backgroundPurpleGlycineHighHover(BuildContext context) {
    return DsfrColorDecisions.isLightMode(context)
        ? DsfrColors.purpleGlycine925Hover
        : DsfrColors.purpleGlycine125Hover;
  }

  static Color focus525(BuildContext context) {
    return DsfrColors.focus525;
  }

  static Color backgroundContrastNew(BuildContext context) {
    return DsfrColorDecisions.isLightMode(context) ? DsfrColors.yellowTournesol950 : DsfrColors.yellowTournesol100;
  }

  static Color textDefaultNew(BuildContext context) {
    return DsfrColorDecisions.isLightMode(context)
        ? DsfrColors.yellowTournesolSun407
        : DsfrColors.yellowTournesolMoon922;
  }
}
