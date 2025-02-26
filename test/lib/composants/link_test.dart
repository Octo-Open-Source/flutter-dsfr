import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/composants/accordions.dart';
import 'package:flutter_dsfr/composants/link.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.dart';

void main() {
  Widget linkSm = DsfrLink(label: 'label', size: DsfrComponentSize.sm);
  Widget linkMd = DsfrLink(label: 'label', size: DsfrComponentSize.md);
  Widget linkLg = DsfrLink(label: 'label', size: DsfrComponentSize.lg);
  Widget linkWithIcon = DsfrLink(label: 'label', size: DsfrComponentSize.md, icon: DsfrIcons.systemArrowLeftLine);

  accessibilityTest(componentName: 'link SM', isLightMode: true, child: linkSm);
  accessibilityTest(componentName: 'link SM', isLightMode: false, child: linkSm);

  accessibilityTest(componentName: 'link MD', isLightMode: true, child: linkMd);
  accessibilityTest(componentName: 'link MD', isLightMode: false, child: linkMd);

  accessibilityTest(componentName: 'link LG', isLightMode: true, child: linkLg);
  accessibilityTest(componentName: 'link LG', isLightMode: false, child: linkLg);

  accessibilityTest(componentName: 'link with icon', isLightMode: true, child: linkWithIcon);
  accessibilityTest(componentName: 'link with icon', isLightMode: false, child: linkWithIcon);
}
