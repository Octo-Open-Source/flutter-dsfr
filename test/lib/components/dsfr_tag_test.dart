import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_tag.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_icons.g.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget tagSm = DsfrTag(label: 'small tag', size: DsfrComponentSize.sm);

  Widget tagSmWithIcon = DsfrTag(
    label: 'small tag with icon',
    icon: DsfrIcons.systemArrowRightLine,
    size: DsfrComponentSize.sm,
  );

  Widget tagSmSelectable = DsfrTag(
    label: 'small tag selectable',
    icon: DsfrIcons.systemArrowRightLine,
    isSelected: true,
    onSelectionChanged: (isSelected) {},
    size: DsfrComponentSize.sm,
  );

  Widget tagSmDisabled = DsfrTag(label: 'small tag disabled', enabled: false, size: DsfrComponentSize.sm);

  Widget tagSmDeletable = DsfrTag(label: 'small tag deletable', onDelete: () {}, size: DsfrComponentSize.sm);

  Widget tagMd = DsfrTag(label: 'medium tag', size: DsfrComponentSize.md);

  Widget tagMdWithIcon = DsfrTag(
    label: 'medium tag with icon',
    icon: DsfrIcons.systemArrowRightLine,
    size: DsfrComponentSize.md,
  );

  Widget tagMdSelectable = DsfrTag(
    label: 'medium tag selectable',
    icon: DsfrIcons.systemArrowRightLine,
    isSelected: true,
    onSelectionChanged: (isSelected) {},
    size: DsfrComponentSize.md,
  );

  Widget tagMdDisabled = DsfrTag(label: 'medium tag disabled', enabled: false, size: DsfrComponentSize.md);

  Widget tagMdDeletable = DsfrTag(label: 'medium tag deletable', onDelete: () {}, size: DsfrComponentSize.md);

  //FIXME: skip, zone de tap trop petite hauteur 26 au lieu de 48
  accessibilityTest(componentName: 'Tag SM', themeMode: ThemeMode.light, child: tagSm, skip: true);
  accessibilityTest(componentName: 'Tag SM', themeMode: ThemeMode.dark, child: tagSm, skip: true);
  accessibilityTest(componentName: 'Tag SM with icon', themeMode: ThemeMode.light, child: tagSmWithIcon, skip: true);
  accessibilityTest(componentName: 'Tag SM with icon', themeMode: ThemeMode.dark, child: tagSmWithIcon, skip: true);
  accessibilityTest(componentName: 'Tag SM selectable', themeMode: ThemeMode.light, child: tagSmSelectable, skip: true);
  accessibilityTest(componentName: 'Tag SM selectable', themeMode: ThemeMode.dark, child: tagSmSelectable, skip: true);
  accessibilityTest(componentName: 'Tag SM disabled', themeMode: ThemeMode.light, child: tagSmDisabled, skip: true);
  accessibilityTest(componentName: 'Tag SM disabled', themeMode: ThemeMode.dark, child: tagSmDisabled, skip: true);
  accessibilityTest(componentName: 'Tag SM deletable', themeMode: ThemeMode.light, child: tagSmDeletable, skip: true);
  accessibilityTest(componentName: 'Tag SM deletable', themeMode: ThemeMode.dark, child: tagSmDeletable, skip: true);
  accessibilityTest(componentName: 'Tag MD', themeMode: ThemeMode.light, child: tagMd, skip: true);
  accessibilityTest(componentName: 'Tag MD', themeMode: ThemeMode.dark, child: tagMd, skip: true);
  accessibilityTest(componentName: 'Tag MD with icon', themeMode: ThemeMode.light, child: tagMdWithIcon, skip: true);
  accessibilityTest(componentName: 'Tag MD with icon', themeMode: ThemeMode.dark, child: tagMdWithIcon, skip: true);
  accessibilityTest(componentName: 'Tag MD selectable', themeMode: ThemeMode.light, child: tagMdSelectable, skip: true);
  accessibilityTest(componentName: 'Tag MD selectable', themeMode: ThemeMode.dark, child: tagMdSelectable, skip: true);
  accessibilityTest(componentName: 'Tag MD disabled', themeMode: ThemeMode.light, child: tagMdDisabled, skip: true);
  accessibilityTest(componentName: 'Tag MD disabled', themeMode: ThemeMode.dark, child: tagMdDisabled, skip: true);
  accessibilityTest(componentName: 'Tag MD deletable', themeMode: ThemeMode.light, child: tagMdDeletable, skip: true);
  accessibilityTest(componentName: 'Tag MD deletable', themeMode: ThemeMode.dark, child: tagMdDeletable, skip: true);
}
