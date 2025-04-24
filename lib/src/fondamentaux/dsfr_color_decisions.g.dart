// ignore_for_file: prefer_using_color_decision

import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_colors.g.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_theme_mode_provider.dart';

class DsfrColorDecisions {
  const DsfrColorDecisions._();

  static bool isLightMode(BuildContext context) {
    final provider = DsfrThemeModeProvider.of(context);
    assert(provider != null, "Make sure you have a ThemeModeProvider at the top of your widget tree.");
    return provider?.isLightMode ?? true;
  }

  static Color artworkMajorBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color artworkMinorBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceMain525 : DsfrColors.blueFranceMain525;
  }

  static Color artworkMinorRedMarianne(BuildContext context) {
    return isLightMode(context) ? DsfrColors.redMarianneMain472 : DsfrColors.redMarianneMain472;
  }

  static Color artworkDecorativeBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance950 : DsfrColors.blueFrance100;
  }

  static Color backgroundDefaultGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000 : DsfrColors.grey50;
  }

  static Color backgroundDefaultGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000Hover : DsfrColors.grey50Hover;
  }

  static Color backgroundDefaultGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000Active : DsfrColors.grey50Active;
  }

  static Color backgroundAltGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey975 : DsfrColors.grey75;
  }

  static Color backgroundAltGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey975Hover : DsfrColors.grey75Hover;
  }

  static Color backgroundAltGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey975Active : DsfrColors.grey75Active;
  }

  static Color backgroundAltBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance975 : DsfrColors.blueFrance75;
  }

  static Color backgroundContrastGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey950 : DsfrColors.grey100;
  }

  static Color backgroundContrastSuccess(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success950 : DsfrColors.success100;
  }

  static Color backgroundContrastError(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error950 : DsfrColors.error100;
  }

  static Color backgroundContrastWarning(BuildContext context) {
    return isLightMode(context) ? DsfrColors.warning950 : DsfrColors.warning100;
  }

  static Color backgroundContrastInfo(BuildContext context) {
    return isLightMode(context) ? DsfrColors.info950 : DsfrColors.blueEcume100;
  }

  static Color backgroundActionHighBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color backgroundActionHighBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Hover : DsfrColors.blueFrance625Hover;
  }

  static Color backgroundActionHighBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Active : DsfrColors.blueFrance625Active;
  }

  static Color backgroundActionLowBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925 : DsfrColors.blueFrance125;
  }

  static Color backgroundActionLowBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925Hover : DsfrColors.blueFrance125Hover;
  }

  static Color backgroundActionLowBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925Active : DsfrColors.blueFrance125Active;
  }

  static Color backgroundActiveBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color backgroundOpenBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925 : DsfrColors.blueFrance125;
  }

  static Color backgroundOpenBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925Hover : DsfrColors.blueFrance125Hover;
  }

  static Color backgroundOpenBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925Active : DsfrColors.blueFrance125Active;
  }

  static Color backgroundFlatSuccess(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425 : DsfrColors.success625;
  }

  static Color backgroundActionHighSuccess(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425 : DsfrColors.success625;
  }

  static Color backgroundFlatError(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425 : DsfrColors.error625;
  }

  static Color backgroundActionHighError(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425 : DsfrColors.error625;
  }

  static Color backgroundFlatWarning(BuildContext context) {
    return isLightMode(context) ? DsfrColors.warning425 : DsfrColors.warning625;
  }

  static Color backgroundActionHighWarning(BuildContext context) {
    return isLightMode(context) ? DsfrColors.warning425 : DsfrColors.warning625;
  }

  static Color backgroundFlatInfo(BuildContext context) {
    return isLightMode(context) ? DsfrColors.info425 : DsfrColors.info625;
  }

  static Color backgroundActionHighInfo(BuildContext context) {
    return isLightMode(context) ? DsfrColors.info425 : DsfrColors.info625;
  }

  static Color backgroundDisabledGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey925 : DsfrColors.grey125;
  }

  static Color backgroundOverlayGrey(BuildContext context) {
    return isLightMode(context)
        ? DsfrColors.createdForMissingDecisionLightbackgroundOverlayGrey
        : DsfrColors.createdForMissingDecisionLightbackgroundOverlayGrey;
  }

  static Color backgroundTransparent(BuildContext context) {
    return isLightMode(context) ? DsfrColors.transparent : DsfrColors.transparent;
  }

  static Color backgroundTransparentHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.transparentHover : DsfrColors.transparentHover;
  }

  static Color backgroundTransparentActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.transparentActive : DsfrColors.transparentActive;
  }

  static Color backgroundRaisedGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000 : DsfrColors.grey75;
  }

  static Color backgroundOverlapGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000 : DsfrColors.grey100;
  }

  static Color backgroundContrastRaisedGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey950 : DsfrColors.grey125;
  }

  static Color backgroundContrastOverlapGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey950 : DsfrColors.grey150;
  }

  static Color backgroundLiftedGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000 : DsfrColors.grey75;
  }

  static Color backgroundAltRaisedGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey975 : DsfrColors.grey100;
  }

  static Color backgroundAltOverlapGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey975 : DsfrColors.grey125;
  }

  static Color backgroundContrastBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance950 : DsfrColors.blueFrance100;
  }

  static Color backgroundFlatGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey200 : DsfrColors.grey850;
  }

  static Color borderDefaultGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey900 : DsfrColors.grey175;
  }

  static Color borderContrastGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey625 : DsfrColors.grey425;
  }

  static Color borderDefaultBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceMain525 : DsfrColors.blueFranceMain525;
  }

  static Color borderActionHighBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color borderActionHighGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color borderActiveBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color borderOpenBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925 : DsfrColors.blueFrance125;
  }

  static Color borderDisabledGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey925 : DsfrColors.grey125;
  }

  static Color borderPlainBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color borderPlainGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey200 : DsfrColors.grey850;
  }

  static Color borderPlainSuccess(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425 : DsfrColors.success625;
  }

  static Color borderPlainError(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425 : DsfrColors.error625;
  }

  static Color borderPlainWarning(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425 : DsfrColors.warning625;
  }

  static Color borderPlainInfo(BuildContext context) {
    return isLightMode(context) ? DsfrColors.info425 : DsfrColors.info625;
  }

  static Color borderActionLowBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance850 : DsfrColors.blueFrance200;
  }

  static Color textTitleGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textTitleBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color textDefaultGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey200 : DsfrColors.grey850;
  }

  static Color textMentionGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey425 : DsfrColors.grey625;
  }

  static Color textLabelGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textActionHighBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color textActionHighGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textActionHighInfo(BuildContext context) {
    return isLightMode(context) ? DsfrColors.info425 : DsfrColors.info625;
  }

  static Color textActionHighWarning(BuildContext context) {
    return isLightMode(context) ? DsfrColors.warning425 : DsfrColors.warning625;
  }

  static Color textActionHighError(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425 : DsfrColors.error625;
  }

  static Color textInvertedGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000 : DsfrColors.grey50;
  }

  static Color textInvertedBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance975 : DsfrColors.blueFranceSun113;
  }

  static Color textActiveBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color textActiveGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textDisabledGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey625 : DsfrColors.grey425;
  }

  static Color textDefaultSuccess(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425 : DsfrColors.success625;
  }

  static Color textDefaultError(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425 : DsfrColors.error625;
  }

  static Color textDefaultWarning(BuildContext context) {
    return isLightMode(context) ? DsfrColors.warning425 : DsfrColors.warning625;
  }

  static Color textDefaultInfo(BuildContext context) {
    return isLightMode(context) ? DsfrColors.info425 : DsfrColors.info625;
  }
}
