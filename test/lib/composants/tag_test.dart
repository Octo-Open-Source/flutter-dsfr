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

  //FIXME: skip, zone de tap trop petite hauteur 26 au lieu de 48
  accessibilityTest(componentName: 'Tag SM', isLightMode: true, child: tagSM, skip: true);
  accessibilityTest(componentName: 'Tag SM', isLightMode: false, child: tagSM, skip: true);
  accessibilityTest(componentName: 'Tag SM with icon', isLightMode: true, child: tagWithIcon, skip: true);
  accessibilityTest(componentName: 'Tag SM with icon', isLightMode: false, child: tagWithIcon, skip: true);
  accessibilityTest(componentName: 'Tag MD', isLightMode: true, child: tagMd, skip: true);
  accessibilityTest(componentName: 'Tag MD', isLightMode: false, child: tagMd, skip: true);
}
