// ignore_for_file: prefer_using_color_decision
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const int _shadowBackgroundColor = 0xff000018;

class DsfrShadows {
  const DsfrShadows._();

  static const shadowSm = BoxShadow(
    color: Color(_shadowBackgroundColor),
    offset: Offset(0, 2),
    blurRadius: 6,
    spreadRadius: 0,
  );

  static const shadowMd = BoxShadow(
    color: Color(_shadowBackgroundColor),
    offset: Offset(0, 4),
    blurRadius: 12,
    spreadRadius: 0,
  );

  static const shadowLg = BoxShadow(
    color: Color(_shadowBackgroundColor),
    offset: Offset(0, 6),
    blurRadius: 18,
    spreadRadius: 0,
  );
}
