// ignore_for_file: prefer_using_color_decision
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

abstract class DsfrThemeData {
  static ThemeData light() => ThemeData(brightness: Brightness.light, scaffoldBackgroundColor: DsfrColors.grey1000);
  static ThemeData dark() => ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: DsfrColors.grey50);
}
