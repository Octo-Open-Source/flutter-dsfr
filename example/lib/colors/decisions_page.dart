import 'package:example/colors/dsfr_colors_example.g.dart';
import 'package:example/colors/color_presentation.dart';
import 'package:example/colors/sort_colors.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class DecisionsPage extends StatelessWidget {
  const DecisionsPage({super.key});

  static final model = PageItem(title: 'Couleurs - Décisions', pageBuilder: (final context) => const DecisionsPage());

  @override
  Widget build(final context) {
    final dsfrColors = DsfrColorsExample.allDecisions(context);
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
