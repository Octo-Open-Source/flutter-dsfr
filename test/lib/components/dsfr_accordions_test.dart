import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/components/dsfr_accordions.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget accordionGroupWithBuilder = DsfrAccordionsGroup(
    values: [
      DsfrAccordion.builder(
        headerBuilder: (bool isExpanded) {
          return Text(isExpanded ? 'header expanded' : 'header collapsed');
        },
        body: Text('body'),
      ),
    ],
  );

  Widget accordionGroup = DsfrAccordionsGroup(
    values: [
      DsfrAccordion(
        headerLabel: 'header',
        body: Text('body'),
      ),
    ],
  );

  accessibilityTest(
    componentName: 'accordion group with builder',
    isLightMode: true,
    child: accordionGroupWithBuilder,
  );
  accessibilityTest(
    componentName: 'accordion group with builder',
    isLightMode: false,
    child: accordionGroupWithBuilder,
  );

  accessibilityTest(componentName: 'accordion group', isLightMode: true, child: accordionGroup);
  accessibilityTest(componentName: 'accordion group', isLightMode: false, child: accordionGroup);
}
