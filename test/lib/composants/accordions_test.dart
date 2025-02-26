import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/composants/accordions.dart';
import '../../helpers/a11y_test.dart';

void main() {
  Widget accordionGroup = DsfrAccordionsGroup(
    values: [
      DsfrAccordion(
        headerBuilder: (bool isExpanded) {
          return Text('header');
        },
        body: Text('body'),
      ),
    ],
  );

  accessibilityTest(componentName: 'accordion group', isLightMode: true, child: accordionGroup);
  accessibilityTest(componentName: 'accordion group', isLightMode: false, child: accordionGroup);
}
