import 'package:example/colors/all_colors.g.dart';
import 'package:example/colors/color_presentation.dart';
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
