// ignore_for_file: unused-code
import 'package:flutter/material.dart';

class DsfrTextStyle extends TextStyle {
  const DsfrTextStyle({
    required final double fontSize,
    super.fontWeight = FontWeight.normal,
    super.color,
    super.fontStyle = FontStyle.normal,
    super.height = 1.4,
  }) : super(package: 'flutter_dsfr', fontFamily: 'Marianne', fontSize: fontSize);

  const DsfrTextStyle.displayXl({required Color color}) : this(fontSize: 72, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.displayLg({required Color color}) : this(fontSize: 64, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.displayMd({required Color color}) : this(fontSize: 56, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.displaySm({required Color color}) : this(fontSize: 48, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.displayXs({required Color color}) : this(fontSize: 40, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.headline1({required Color color}) : this(fontSize: 32, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.headline2({required Color color}) : this(fontSize: 28, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.headline3({required Color color}) : this(fontSize: 24, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.headline4({required Color color}) : this(fontSize: 22, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.headline5({required Color color}) : this(fontSize: 20, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.headline6({required Color color}) : this(fontSize: 18, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.bodyXl({required Color color}) : this(fontSize: 20, color: color);

  const DsfrTextStyle.bodyXlMedium({required Color color})
    : this(fontSize: 20, fontWeight: FontWeight.w500, color: color);

  const DsfrTextStyle.bodyXlBold({required Color color})
    : this(fontSize: 20, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.bodyLg({required Color color}) : this(fontSize: 18, color: color);

  const DsfrTextStyle.bodyLgMedium({required Color color})
    : this(fontSize: 18, fontWeight: FontWeight.w500, color: color, height: 1);

  const DsfrTextStyle.bodyLgBold({required Color color})
    : this(fontSize: 18, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.bodyMd({required Color color}) : this(fontSize: 16, color: color);

  const DsfrTextStyle.bodyMdCenter({required Color color}) : this(fontSize: 16, color: color, height: 1);

  const DsfrTextStyle.bodyMdFc({required Color color}) : this(fontSize: 17, color: color, height: 1);

  const DsfrTextStyle.bodyMdMedium({required Color color})
    : this(fontSize: 16, fontWeight: FontWeight.w500, color: color, height: 1);

  const DsfrTextStyle.bodyMdBold({required Color color})
    : this(fontSize: 16, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.bodyMdBoldFc({required Color color})
    : this(fontSize: 18, fontWeight: FontWeight.bold, color: color, height: 1);

  const DsfrTextStyle.bodySm({required Color color}) : this(fontSize: 14, color: color);

  const DsfrTextStyle.bodySmItalic({required Color color})
    : this(fontSize: 14, color: color, fontStyle: FontStyle.italic);

  const DsfrTextStyle.bodySmMedium({required Color color})
    : this(fontSize: 14, fontWeight: FontWeight.w500, color: color, height: 1);

  const DsfrTextStyle.bodySmBold({required Color color})
    : this(fontSize: 14, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.bodyXs({required Color color}) : this(fontSize: 12, color: color);

  const DsfrTextStyle.bodyXsMedium({required Color color})
    : this(fontSize: 12, fontWeight: FontWeight.w500, color: color);

  const DsfrTextStyle.bodyXsBold({required Color color})
    : this(fontSize: 12, fontWeight: FontWeight.bold, color: color);

  const DsfrTextStyle.fontFamily() : super(package: 'flutter_dsfr', fontFamily: 'Marianne');
}
