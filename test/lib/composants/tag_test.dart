import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/tags.dart';
import '../../helpers/a11y_test.dart';

void main() {
  Widget tagSM = DsfrTag(
    label: TextSpan(text: 'small tag'),
  );

  accessibilityTest(componentName: 'Tag SM', isLightMode: true, child: tagSM);
  accessibilityTest(componentName: 'Tag SM', isLightMode: false, child: tagSM);
}
