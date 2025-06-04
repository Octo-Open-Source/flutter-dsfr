import 'package:example/colors/dsfr_color.dart';
import 'package:flutter/material.dart';

class ColorPresentation extends StatelessWidget {
  const ColorPresentation({super.key, required this.dsfrColor});

  final DsfrColor dsfrColor;

  @override
  Widget build(final context) {
    final textColor = dsfrColor.color.computeLuminance() > 0.5 ? Colors.black : Colors.white;
    return Container(
      color: dsfrColor.color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text(dsfrColor.name, style: TextStyle(color: textColor)),
              Text(dsfrColor.description, style: TextStyle(color: textColor)),
            ],
          ),
        ),
      ),
    );
  }
}
