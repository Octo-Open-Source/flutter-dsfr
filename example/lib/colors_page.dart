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
    final dsfrColors = allColors();
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

List<DsfrColor> allColors() {
  //TODO: fake data
  return Colors.primaries.map((e) {
    return DsfrColor(
      name: "greenTilleulVerveine850Hover",
      hex: "#12345678",
      color: e,
    );
  }).toList();
}

class DsfrColor {
  const DsfrColor({
    required this.name,
    required this.hex,
    required this.color,
  });

  final String name;
  final String hex;
  final Color color;
}
