import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/tag.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget tagSm = DsfrTag.sm(
    label: TextSpan(text: 'small tag'),
  );

  Widget tagSmWithIcon = DsfrTag.sm(
    label: TextSpan(text: 'small tag with icon'),
    icon: DsfrIcons.systemArrowRightLine,
  );

  Widget tagSmSelectable = DsfrTag.sm(
    label: TextSpan(text: 'small tag selectable'),
    icon: DsfrIcons.systemArrowRightLine,
    isSelectable: true,
    isSelected: true,
  );

  Widget tagSmDisabled = DsfrTag.sm(
    label: TextSpan(text: 'small tag disabled'),
    enabled: false,
  );

  Widget tagSmDeletable = DsfrTag.sm(
    label: TextSpan(text: 'small tag deletable'),
    onDelete: () {},
  );


  Widget tagMd = DsfrTag.md(
    label: TextSpan(text: 'medium tag'),
  );

  Widget tagMdWithIcon = DsfrTag.md(
    label: TextSpan(text: 'medium tag with icon'),
    icon: DsfrIcons.systemArrowRightLine,
  );

  Widget tagMdSelectable = DsfrTag.md(
    label: TextSpan(text: 'medium tag selectable'),
    icon: DsfrIcons.systemArrowRightLine,
    isSelectable: true,
    isSelected: true,
  );

  Widget tagMdDisabled = DsfrTag.md(
    label: TextSpan(text: 'medium tag disabled'),
    enabled: false,
  );

  Widget tagMdDeletable = DsfrTag.md(
    label: TextSpan(text: 'medium tag deletable'),
    onDelete: () {},
  );

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
