import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/components/dsfr_accordions.dart';
import '../../helpers/a11y_test.skip.dart';

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
