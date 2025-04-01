import 'package:flutter_dsfr/components/dsfr_badge.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  final smallInfoLabel = DsfrBadge.sm(label: 'badge info', type: DsfrBadgeType.information);
  final smallSuccessLabel = DsfrBadge.sm(label: 'badge succès', type: DsfrBadgeType.success);
  final smallErrorLabel = DsfrBadge.sm(label: 'badge erreur', type: DsfrBadgeType.error);
  final smallWarningLabel = DsfrBadge.sm(label: 'badge avertissement', type: DsfrBadgeType.warning);
  final smallNewLabel= DsfrBadge.sm(label: 'badge nouveau', type: DsfrBadgeType.news);

  final mediumInfoLabel = DsfrBadge.md(label: 'badge info', type: DsfrBadgeType.information);
  final mediumSuccessLabel = DsfrBadge.md(label: 'badge succès', type: DsfrBadgeType.success);
  final mediumErrorLabel = DsfrBadge.md(label: 'badge erreur', type: DsfrBadgeType.error);
  final mediumWarningLabel = DsfrBadge.md(label: 'badge avertissement', type: DsfrBadgeType.warning);
  final mediumNewLabel= DsfrBadge.md(label: 'badge nouveau', type: DsfrBadgeType.news);

  final smallInfoLabelWithIcon =DsfrBadge.sm(label: 'badge info', type: DsfrBadgeType.information, withIcon: true);
  final smallSuccessLabelWithIcon =DsfrBadge.sm(label: 'badge succès', type: DsfrBadgeType.success, withIcon: true);
  final smallErrorLabelWithIcon =DsfrBadge.sm(label: 'badge erreur', type: DsfrBadgeType.error, withIcon: true);
  final smallWarningLabelWithIcon =DsfrBadge.sm(label: 'badge avertissement', type: DsfrBadgeType.warning, withIcon: true);
  final smallNewLabelWithIcon =DsfrBadge.sm(label: 'badge nouveau', type: DsfrBadgeType.news, withIcon: true);

  final mediumInfoLabelWithIcon =DsfrBadge.md(label: 'badge info', type: DsfrBadgeType.information, withIcon: true);
  final mediumSuccessLabelWithIcon =DsfrBadge.md(label: 'badge succès', type: DsfrBadgeType.success, withIcon: true);
  final mediumErrorLabelWithIcon =DsfrBadge.md(label: 'badge erreur', type: DsfrBadgeType.error, withIcon: true);
  final mediumWarningLabelWithIcon =DsfrBadge.md(label: 'badge avertissement', type: DsfrBadgeType.warning, withIcon: true);
  final mediumNewLabelWithIcon =DsfrBadge.md(label: 'badge nouveau', type: DsfrBadgeType.news, withIcon: true);

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
