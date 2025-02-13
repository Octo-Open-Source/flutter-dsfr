import 'dart:ui';

int colorToInt(Color color) {
  int a = (color.a * 255).round() & 0xff;
  int r = (color.r * 255).round() & 0xff;
  int g = (color.g * 255).round() & 0xff;
  int b = (color.b * 255).round() & 0xff;
  return a << 24 | r << 16 | g << 8 | b;
}