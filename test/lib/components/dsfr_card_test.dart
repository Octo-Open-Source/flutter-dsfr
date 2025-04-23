import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/components/dsfr_card.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget cardSm = DsfrCard(
    title: 'Titre de la tuile',
    description: 'Description de la tuile',
    size: DsfrComponentSize.sm,
  );
  Widget cardMd = DsfrCard(
    title: 'Titre de la tuile',
    description: 'Description de la tuile',
    size: DsfrComponentSize.md,
  );
  Widget cardLg = DsfrCard(
    title: 'Titre de la tuile',
    description: 'Description de la tuile',
    size: DsfrComponentSize.lg,
  );

  accessibilityTest(componentName: 'Card SM', isLightMode: true, child: cardSm);
  accessibilityTest(componentName: 'Card SM', isLightMode: false, child: cardSm);

  accessibilityTest(componentName: 'Card MD', isLightMode: true, child: cardMd);
  accessibilityTest(componentName: 'Card MD', isLightMode: false, child: cardMd);

  accessibilityTest(componentName: 'Card LG', isLightMode: true, child: cardLg);
  accessibilityTest(componentName: 'Card LG', isLightMode: false, child: cardLg);
}
