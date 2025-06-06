import 'package:flutter/cupertino.dart';
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
  accessibilityTest(componentName: 'Tag SM', isLightMode: true, child: tagSm, skip: true);
  accessibilityTest(componentName: 'Tag SM', isLightMode: false, child: tagSm, skip: true);
  accessibilityTest(componentName: 'Tag SM with icon', isLightMode: true, child: tagSmWithIcon, skip: true);
  accessibilityTest(componentName: 'Tag SM with icon', isLightMode: false, child: tagSmWithIcon, skip: true);
  accessibilityTest(componentName: 'Tag SM selectable', isLightMode: true, child: tagSmSelectable, skip: true);
  accessibilityTest(componentName: 'Tag SM selectable', isLightMode: false, child: tagSmSelectable, skip: true);
  accessibilityTest(componentName: 'Tag SM disabled', isLightMode: true, child: tagSmDisabled, skip: true);
  accessibilityTest(componentName: 'Tag SM disabled', isLightMode: false, child: tagSmDisabled, skip: true);
  accessibilityTest(componentName: 'Tag SM deletable', isLightMode: true, child: tagSmDeletable, skip: true);
  accessibilityTest(componentName: 'Tag SM deletable', isLightMode: false, child: tagSmDeletable, skip: true);
  accessibilityTest(componentName: 'Tag MD', isLightMode: true, child: tagMd, skip: true);
  accessibilityTest(componentName: 'Tag MD', isLightMode: false, child: tagMd, skip: true);
  accessibilityTest(componentName: 'Tag MD with icon', isLightMode: true, child: tagMdWithIcon, skip: true);
  accessibilityTest(componentName: 'Tag MD with icon', isLightMode: false, child: tagMdWithIcon, skip: true);
  accessibilityTest(componentName: 'Tag MD selectable', isLightMode: true, child: tagMdSelectable, skip: true);
  accessibilityTest(componentName: 'Tag MD selectable', isLightMode: false, child: tagMdSelectable, skip: true);
  accessibilityTest(componentName: 'Tag MD disabled', isLightMode: true, child: tagMdDisabled, skip: true);
  accessibilityTest(componentName: 'Tag MD disabled', isLightMode: false, child: tagMdDisabled, skip: true);
  accessibilityTest(componentName: 'Tag MD deletable', isLightMode: true, child: tagMdDeletable, skip: true);
  accessibilityTest(componentName: 'Tag MD deletable', isLightMode: false, child: tagMdDeletable, skip: true);
}
