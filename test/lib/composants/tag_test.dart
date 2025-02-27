import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/tag.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget tagSM = DsfrTag.sm(
    label: TextSpan(text: 'small tag'),
  );

  Widget tagWithIcon = DsfrTag.sm(
    label: TextSpan(text: 'small tag'),
    icon: DsfrIcons.systemArrowRightLine,
  );

  Widget tagMd = DsfrTag.md(
    label: TextSpan(text: 'medium tag'),
  );

  accessibilityTest(componentName: 'Tag SM', isLightMode: true, child: tagSM);
  accessibilityTest(componentName: 'Tag SM', isLightMode: false, child: tagSM);

  accessibilityTest(componentName: 'Tag SM with icon', isLightMode: true, child: tagWithIcon);
  accessibilityTest(componentName: 'Tag SM with icon', isLightMode: false, child: tagWithIcon);

  accessibilityTest(componentName: 'Tag MD', isLightMode: true, child: tagMd);
  accessibilityTest(componentName: 'Tag MD', isLightMode: false, child: tagMd);
}
