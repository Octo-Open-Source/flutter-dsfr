import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_link.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_icons.g.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget linkSm = DsfrLink(label: 'label', size: DsfrComponentSize.sm);
  Widget linkMd = DsfrLink(label: 'label', size: DsfrComponentSize.md);
  Widget linkLg = DsfrLink(label: 'label', size: DsfrComponentSize.lg);
  Widget linkWithIcon = DsfrLink(label: 'label', size: DsfrComponentSize.md, icon: DsfrIcons.systemArrowLeftLine);

  accessibilityTest(componentName: 'link SM', themeMode: ThemeMode.light, child: linkSm);
  accessibilityTest(componentName: 'link SM', themeMode: ThemeMode.dark, child: linkSm);

  accessibilityTest(componentName: 'link MD', themeMode: ThemeMode.light, child: linkMd);
  accessibilityTest(componentName: 'link MD', themeMode: ThemeMode.dark, child: linkMd);

  accessibilityTest(componentName: 'link LG', themeMode: ThemeMode.light, child: linkLg);
  accessibilityTest(componentName: 'link LG', themeMode: ThemeMode.dark, child: linkLg);

  accessibilityTest(componentName: 'link with icon', themeMode: ThemeMode.light, child: linkWithIcon);
  accessibilityTest(componentName: 'link with icon', themeMode: ThemeMode.dark, child: linkWithIcon);
}
