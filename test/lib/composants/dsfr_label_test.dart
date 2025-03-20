import 'package:flutter_dsfr/composants/dsfr_label.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  final smallInfoLabel = DsfrLabel.sm(label: 'badge info', type: DsfrLabelType.information);
  final smallSuccessLabel = DsfrLabel.sm(label: 'badge succès', type: DsfrLabelType.success);
  final smallErrorLabel = DsfrLabel.sm(label: 'badge erreur', type: DsfrLabelType.error);
  final smallWarningLabel = DsfrLabel.sm(label: 'badge avertissement', type: DsfrLabelType.warning);
  final smallNewLabel= DsfrLabel.sm(label: 'badge nouveau', type: DsfrLabelType.novelties);

  final mediumInfoLabel = DsfrLabel.md(label: 'badge info', type: DsfrLabelType.information);
  final mediumSuccessLabel = DsfrLabel.md(label: 'badge succès', type: DsfrLabelType.success);
  final mediumErrorLabel = DsfrLabel.md(label: 'badge erreur', type: DsfrLabelType.error);
  final mediumWarningLabel = DsfrLabel.md(label: 'badge avertissement', type: DsfrLabelType.warning);
  final mediumNewLabel= DsfrLabel.md(label: 'badge nouveau', type: DsfrLabelType.novelties);

  final smallInfoLabelWithIcon =DsfrLabel.sm(label: 'badge info', type: DsfrLabelType.information, withIcon: true);
  final smallSuccessLabelWithIcon =DsfrLabel.sm(label: 'badge succès', type: DsfrLabelType.success, withIcon: true);
  final smallErrorLabelWithIcon =DsfrLabel.sm(label: 'badge erreur', type: DsfrLabelType.error, withIcon: true);
  final smallWarningLabelWithIcon =DsfrLabel.sm(label: 'badge avertissement', type: DsfrLabelType.warning, withIcon: true);
  final smallNewLabelWithIcon =DsfrLabel.sm(label: 'badge nouveau', type: DsfrLabelType.novelties, withIcon: true);

  final mediumInfoLabelWithIcon =DsfrLabel.md(label: 'badge info', type: DsfrLabelType.information, withIcon: true);
  final mediumSuccessLabelWithIcon =DsfrLabel.md(label: 'badge succès', type: DsfrLabelType.success, withIcon: true);
  final mediumErrorLabelWithIcon =DsfrLabel.md(label: 'badge erreur', type: DsfrLabelType.error, withIcon: true);
  final mediumWarningLabelWithIcon =DsfrLabel.md(label: 'badge avertissement', type: DsfrLabelType.warning, withIcon: true);
  final mediumNewLabelWithIcon =DsfrLabel.md(label: 'badge nouveau', type: DsfrLabelType.novelties, withIcon: true);

  accessibilityTest(componentName: 'Badge info SM', isLightMode: true, child: smallInfoLabel);
  accessibilityTest(componentName: 'Badge info SM', isLightMode: false, child: smallInfoLabel);
  accessibilityTest(componentName: 'Badge succès SM', isLightMode: true, child: smallSuccessLabel);
  accessibilityTest(componentName: 'Badge succès SM', isLightMode: false, child: smallSuccessLabel);
  accessibilityTest(componentName: 'Badge erreur SM', isLightMode: true, child: smallErrorLabel);
  accessibilityTest(componentName: 'Badge erreur SM', isLightMode: false, child: smallErrorLabel);
  accessibilityTest(componentName: 'Badge avertissement SM', isLightMode: true, child: smallWarningLabel);
  accessibilityTest(componentName: 'Badge avertissement SM', isLightMode: false, child: smallWarningLabel);
  accessibilityTest(componentName: 'Badge nouveau SM', isLightMode: true, child: smallNewLabel);
  accessibilityTest(componentName: 'Badge nouveau SM', isLightMode: false, child: smallNewLabel);

  accessibilityTest(componentName: 'Badge info MD', isLightMode: true, child: mediumInfoLabel);
  accessibilityTest(componentName: 'Badge info MD', isLightMode: false, child: mediumInfoLabel);
  accessibilityTest(componentName: 'Badge succès MD', isLightMode: true, child: mediumSuccessLabel);
  accessibilityTest(componentName: 'Badge succès MD', isLightMode: false, child: mediumSuccessLabel);
  accessibilityTest(componentName: 'Badge erreur MD', isLightMode: true, child: mediumErrorLabel);
  accessibilityTest(componentName: 'Badge erreur MD', isLightMode: false, child: mediumErrorLabel);
  accessibilityTest(componentName: 'Badge avertissement MD', isLightMode: true, child: mediumWarningLabel);
  accessibilityTest(componentName: 'Badge avertissement MD', isLightMode: false, child: mediumWarningLabel);
  accessibilityTest(componentName: 'Badge nouveau MD', isLightMode: true, child: mediumNewLabel);
  accessibilityTest(componentName: 'Badge nouveau MD', isLightMode: false, child: mediumNewLabel);

  accessibilityTest(componentName: 'Badge info SM with icon', isLightMode: true, child: smallInfoLabelWithIcon);
  accessibilityTest(componentName: 'Badge info SM with icon', isLightMode: false, child: smallInfoLabelWithIcon);
  accessibilityTest(componentName: 'Badge succès SM with icon', isLightMode: true, child: smallSuccessLabelWithIcon);
  accessibilityTest(componentName: 'Badge succès SM with icon', isLightMode: false, child: smallSuccessLabelWithIcon);
  accessibilityTest(componentName: 'Badge erreur SM with icon', isLightMode: true, child: smallErrorLabelWithIcon);
  accessibilityTest(componentName: 'Badge erreur SM with icon', isLightMode: false, child: smallErrorLabelWithIcon);
  accessibilityTest(componentName: 'Badge avertissement SM with icon', isLightMode: true, child: smallWarningLabelWithIcon);
  accessibilityTest(componentName: 'Badge avertissement SM with icon', isLightMode: false, child: smallWarningLabelWithIcon);
  accessibilityTest(componentName: 'Badge nouveau SM with icon', isLightMode: true, child: smallNewLabelWithIcon);
  accessibilityTest(componentName: 'Badge nouveau SM with icon', isLightMode: false, child: smallNewLabelWithIcon);

  accessibilityTest(componentName: 'Badge info MD with icon', isLightMode: true, child: mediumInfoLabelWithIcon);
  accessibilityTest(componentName: 'Badge info MD with icon', isLightMode: false, child: mediumInfoLabelWithIcon);
  accessibilityTest(componentName: 'Badge succès MD with icon', isLightMode: true, child: mediumSuccessLabelWithIcon);
  accessibilityTest(componentName: 'Badge succès MD with icon', isLightMode: false, child: mediumSuccessLabelWithIcon);
  accessibilityTest(componentName: 'Badge erreur MD with icon', isLightMode: true, child: mediumErrorLabelWithIcon);
  accessibilityTest(componentName: 'Badge erreur MD with icon', isLightMode: false, child: mediumErrorLabelWithIcon);
  accessibilityTest(componentName: 'Badge avertissement MD with icon', isLightMode: true, child: mediumWarningLabelWithIcon);
  accessibilityTest(componentName: 'Badge avertissement MD with icon', isLightMode: false, child: mediumWarningLabelWithIcon);
  accessibilityTest(componentName: 'Badge nouveau MD with icon', isLightMode: true, child: mediumNewLabelWithIcon);
  accessibilityTest(componentName: 'Badge nouveau MD with icon', isLightMode: false, child: mediumNewLabelWithIcon);
}
