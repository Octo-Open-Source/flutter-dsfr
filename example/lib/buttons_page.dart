import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  static final model = PageItem(
    title: 'Bouton',
    pageBuilder: (final context) => const ButtonsPage(),
  );

  void _handleTap() {}

  @override
  Widget build(final context) {
    const label = 'Bouton';
    const gap = SizedBox(height: DsfrSpacings.s2w);

    final children = <Widget>[];
    for (final variant in DsfrButtonVariant.values) {
      for (final size in DsfrButtonSize.values) {
        children.addAll([
          Text('variant: ${variant.name}, size: ${size.name}'),
          DsfrButton(label: label, variant: variant, size: size),
          DsfrButton(
            label: label,
            variant: variant,
            size: size,
            onPressed: _handleTap,
          ),
          DsfrButton(
            label: label,
            icon: DsfrIcons.buildingsAncientGateFill,
            variant: variant,
            size: size,
            onPressed: _handleTap,
          ),
          DsfrButton(
            label: label,
            icon: DsfrIcons.buildingsAncientGateFill,
            iconLocation: DsfrButtonIconLocation.right,
            variant: variant,
            size: size,
            onPressed: _handleTap,
          ),
          DsfrButton(
            icon: DsfrIcons.buildingsAncientGateFill,
            iconLocation: DsfrButtonIconLocation.right,
            variant: variant,
            size: size,
            onPressed: _handleTap,
          ),
        ]);
      }
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Ink(
        color: DsfrColorDecisions.backgroundDefaultGrey(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children.separator(gap).toList(),
        ),
      ),
    );
  }
}
