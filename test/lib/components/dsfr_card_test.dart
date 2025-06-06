import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_card.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget cardSm = DsfrCard(
    size: DsfrComponentSize.sm,
    title: 'Titre de la tuile',
    description: 'Description de la tuile',
  );
  Widget cardMd = DsfrCard(
    size: DsfrComponentSize.md,
    title: 'Titre de la tuile',
    description: 'Description de la tuile',
  );
  Widget cardLg = DsfrCard(
    size: DsfrComponentSize.lg,
    title: 'Titre de la tuile',
    description: 'Description de la tuile',
  );

  accessibilityTest(componentName: 'Card SM', themeMode: ThemeMode.light, child: cardSm);
  accessibilityTest(componentName: 'Card SM', themeMode: ThemeMode.dark, child: cardSm);

  accessibilityTest(componentName: 'Card MD', themeMode: ThemeMode.light, child: cardMd);
  accessibilityTest(componentName: 'Card MD', themeMode: ThemeMode.dark, child: cardMd);

  accessibilityTest(componentName: 'Card LG', themeMode: ThemeMode.light, child: cardLg);
  accessibilityTest(componentName: 'Card LG', themeMode: ThemeMode.dark, child: cardLg);
}
