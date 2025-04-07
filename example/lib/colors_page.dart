import 'package:example/colors/all_colors.g.dart';
import 'package:example/colors/dsfr_color.dart';
import 'package:example/colors/sort_colors.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  static final model = PageItem(
    title: 'Couleurs - Palette',
    pageBuilder: (final context) => const ColorsPage(),
  );

  @override
  Widget build(final context) {
    final dsfrColors = DsfrColorsExample.allColors();
    dsfrColors.sortColorsByName();
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: dsfrColors.length,
            itemBuilder: (final context, final index) {
              return ColorPresentation(dsfrColor: dsfrColors[index]);
            },
          ),
        ),
      ],
    );
  }
}

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
              Text(
                dsfrColor.name,
                style: TextStyle(color: textColor),
              ),
              Text(
                dsfrColor.hex,
                style: TextStyle(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
