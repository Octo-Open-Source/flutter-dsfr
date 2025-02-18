import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

extension ColorExtension on Color {
  int colorToInt() {
    int a = (this.a * 255).round() & 0xff;
    int r = (this.r * 255).round() & 0xff;
    int g = (this.g * 255).round() & 0xff;
    int b = (this.b * 255).round() & 0xff;
    return a << 24 | r << 16 | g << 8 | b;
  }
}
