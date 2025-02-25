import 'package:flutter_dsfr/fondamentaux/colors.g.dart';
import 'package:flutter/material.dart';

class DsfrDivider extends StatelessWidget {
  const DsfrDivider({
    super.key,
    this.width,
    this.height = 1,
    // ignore: prefer_using_color_decision
    this.color = DsfrColors.grey900,
    this.alignment = Alignment.center,
  });

  final double? width;
  final double height;
  final Color color;
  final AlignmentGeometry alignment;

  @override
  Widget build(final context) => Align(
        alignment: alignment,
        child: SizedBox(
          width: width,
          child: Divider(height: height, thickness: height, color: color),
        ),
      );
}
