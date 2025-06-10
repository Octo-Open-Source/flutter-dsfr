import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_accordions.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget accordionGroupWithExpandedLabel = DsfrAccordionsGroup(
    values: [
      DsfrAccordion(headerLabel: 'header collapsed', headerExpandedLabel: 'header expanded', body: Text('body')),
    ],
  );

  Widget accordionGroup = DsfrAccordionsGroup(
    values: [DsfrAccordion(headerLabel: 'header', body: Text('body'))],
  );

  accessibilityTest(
    componentName: 'accordion group with builder',
    themeMode: ThemeMode.light,
    child: accordionGroupWithExpandedLabel,
  );
  accessibilityTest(
    componentName: 'accordion group with builder',
    themeMode: ThemeMode.dark,
    child: accordionGroupWithExpandedLabel,
  );

  accessibilityTest(componentName: 'accordion group', themeMode: ThemeMode.light, child: accordionGroup);
  accessibilityTest(componentName: 'accordion group', themeMode: ThemeMode.dark, child: accordionGroup);
}
