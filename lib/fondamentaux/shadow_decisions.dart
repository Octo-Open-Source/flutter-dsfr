// ignore_for_file: prefer_using_color_decision

import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/shadows.dart';
import 'package:flutter_dsfr/helpers/theme_mode_provider.dart';

int _lightModeAlpha = (0.16 * 255).round();
int _darkModeAlpha = (0.32 * 255).round();

class DsfrShadowDecisions {
  const DsfrShadowDecisions._();

  static bool isLightMode(BuildContext context) {
    final provider = ThemeModeProvider.of(context);
    assert(provider != null, "Make sure you have a ThemeModeProvider at the top of your widget tree.");
    return provider?.isLightMode ?? true;
  }

  static BoxShadow raised(BuildContext context) {
    return DsfrShadows.shadowSm.copyWith(
      color: DsfrShadows.shadowSm.color.withAlpha(
        isLightMode(context) ? _lightModeAlpha : _darkModeAlpha,
      ),
    );
  }

  static BoxShadow overlap(BuildContext context) {
    return DsfrShadows.shadowMd.copyWith(
      color: DsfrShadows.shadowMd.color.withAlpha(
        isLightMode(context) ? _lightModeAlpha : _darkModeAlpha,
      ),
    );
  }

  static BoxShadow lifted(BuildContext context) {
    return DsfrShadows.shadowLg.copyWith(
      color: DsfrShadows.shadowLg.color.withAlpha(
        isLightMode(context) ? _lightModeAlpha : _darkModeAlpha,
      ),
    );
  }
}
