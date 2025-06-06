import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';

class DsfrDivider extends StatelessWidget {
  const DsfrDivider({super.key, this.width, this.height = 1, this.color, this.alignment = Alignment.center});

  final double? width;
  final double height;
  final Color? color;
  final AlignmentGeometry alignment;

  @override
  Widget build(final context) => Align(
    alignment: alignment,
    child: SizedBox(
      width: width,
      child: Divider(height: height, thickness: height, color: color ?? DsfrColorDecisions.borderDefaultGrey(context)),
    ),
  );
}
