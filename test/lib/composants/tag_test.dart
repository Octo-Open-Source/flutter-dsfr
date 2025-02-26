import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/accordions.dart';
import 'package:flutter_dsfr/composants/link.dart';
import 'package:flutter_dsfr/composants/select.dart';
import 'package:flutter_dsfr/composants/tags.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.dart';

void main() {
  Widget tagSM = DsfrTag(
    label: TextSpan(text: 'small tag'),
  );

  accessibilityTest(componentName: 'Tag SM', isLightMode: true, child: tagSM);
  accessibilityTest(componentName: 'Tag SM', isLightMode: false, child: tagSM);
}
