import 'package:flutter_dsfr/src/components/dsfr_badge.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  final smallInfoLabel = DsfrBadge(label: 'badge info', type: DsfrBadgeType.information, size: DsfrComponentSize.sm);
  final smallSuccessLabel = DsfrBadge(label: 'badge succès', type: DsfrBadgeType.success, size: DsfrComponentSize.sm);
  final smallErrorLabel = DsfrBadge(label: 'badge erreur', type: DsfrBadgeType.error, size: DsfrComponentSize.sm);
  final smallWarningLabel = DsfrBadge(
    label: 'badge avertissement',
    type: DsfrBadgeType.warning,
    size: DsfrComponentSize.sm,
  );
  final smallNewLabel = DsfrBadge(label: 'badge nouveau', type: DsfrBadgeType.news, size: DsfrComponentSize.sm);

  final mediumInfoLabel = DsfrBadge(label: 'badge info', type: DsfrBadgeType.information, size: DsfrComponentSize.md);
  final mediumSuccessLabel = DsfrBadge(label: 'badge succès', type: DsfrBadgeType.success, size: DsfrComponentSize.md);
  final mediumErrorLabel = DsfrBadge(label: 'badge erreur', type: DsfrBadgeType.error, size: DsfrComponentSize.md);
  final mediumWarningLabel = DsfrBadge(
    label: 'badge avertissement',
    type: DsfrBadgeType.warning,
    size: DsfrComponentSize.md,
  );
  final mediumNewLabel = DsfrBadge(label: 'badge nouveau', type: DsfrBadgeType.news, size: DsfrComponentSize.md);

  final smallInfoLabelWithIcon = DsfrBadge(
    label: 'badge info',
    type: DsfrBadgeType.information,
    withIcon: true,
    size: DsfrComponentSize.sm,
  );
  final smallSuccessLabelWithIcon = DsfrBadge(
    label: 'badge succès',
    type: DsfrBadgeType.success,
    withIcon: true,
    size: DsfrComponentSize.sm,
  );
  final smallErrorLabelWithIcon = DsfrBadge(
    label: 'badge erreur',
    type: DsfrBadgeType.error,
    withIcon: true,
    size: DsfrComponentSize.sm,
  );
  final smallWarningLabelWithIcon = DsfrBadge(
    label: 'badge avertissement',
    type: DsfrBadgeType.warning,
    withIcon: true,
    size: DsfrComponentSize.sm,
  );
  final smallNewLabelWithIcon = DsfrBadge(
    label: 'badge nouveau',
    type: DsfrBadgeType.news,
    withIcon: true,
    size: DsfrComponentSize.sm,
  );

  final mediumInfoLabelWithIcon = DsfrBadge(
    label: 'badge info',
    type: DsfrBadgeType.information,
    withIcon: true,
    size: DsfrComponentSize.md,
  );
  final mediumSuccessLabelWithIcon = DsfrBadge(
    label: 'badge succès',
    type: DsfrBadgeType.success,
    withIcon: true,
    size: DsfrComponentSize.md,
  );
  final mediumErrorLabelWithIcon = DsfrBadge(
    label: 'badge erreur',
    type: DsfrBadgeType.error,
    withIcon: true,
    size: DsfrComponentSize.md,
  );
  final mediumWarningLabelWithIcon = DsfrBadge(
    label: 'badge avertissement',
    type: DsfrBadgeType.warning,
    withIcon: true,
    size: DsfrComponentSize.md,
  );
  final mediumNewLabelWithIcon = DsfrBadge(
    label: 'badge nouveau',
    type: DsfrBadgeType.news,
    withIcon: true,
    size: DsfrComponentSize.md,
  );

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
  accessibilityTest(
    componentName: 'Badge avertissement SM with icon',
    isLightMode: true,
    child: smallWarningLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge avertissement SM with icon',
    isLightMode: false,
    child: smallWarningLabelWithIcon,
  );
  accessibilityTest(componentName: 'Badge nouveau SM with icon', isLightMode: true, child: smallNewLabelWithIcon);
  accessibilityTest(componentName: 'Badge nouveau SM with icon', isLightMode: false, child: smallNewLabelWithIcon);

  accessibilityTest(componentName: 'Badge info MD with icon', isLightMode: true, child: mediumInfoLabelWithIcon);
  accessibilityTest(componentName: 'Badge info MD with icon', isLightMode: false, child: mediumInfoLabelWithIcon);
  accessibilityTest(componentName: 'Badge succès MD with icon', isLightMode: true, child: mediumSuccessLabelWithIcon);
  accessibilityTest(componentName: 'Badge succès MD with icon', isLightMode: false, child: mediumSuccessLabelWithIcon);
  accessibilityTest(componentName: 'Badge erreur MD with icon', isLightMode: true, child: mediumErrorLabelWithIcon);
  accessibilityTest(componentName: 'Badge erreur MD with icon', isLightMode: false, child: mediumErrorLabelWithIcon);
  accessibilityTest(
    componentName: 'Badge avertissement MD with icon',
    isLightMode: true,
    child: mediumWarningLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge avertissement MD with icon',
    isLightMode: false,
    child: mediumWarningLabelWithIcon,
  );
  accessibilityTest(componentName: 'Badge nouveau MD with icon', isLightMode: true, child: mediumNewLabelWithIcon);
  accessibilityTest(componentName: 'Badge nouveau MD with icon', isLightMode: false, child: mediumNewLabelWithIcon);
}
