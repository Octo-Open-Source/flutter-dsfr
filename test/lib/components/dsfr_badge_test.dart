import 'package:flutter/material.dart';
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

  accessibilityTest(componentName: 'Badge info SM', themeMode: ThemeMode.light, child: smallInfoLabel);
  accessibilityTest(componentName: 'Badge info SM', themeMode: ThemeMode.dark, child: smallInfoLabel);
  accessibilityTest(componentName: 'Badge succès SM', themeMode: ThemeMode.light, child: smallSuccessLabel);
  accessibilityTest(componentName: 'Badge succès SM', themeMode: ThemeMode.dark, child: smallSuccessLabel);
  accessibilityTest(componentName: 'Badge erreur SM', themeMode: ThemeMode.light, child: smallErrorLabel);
  accessibilityTest(componentName: 'Badge erreur SM', themeMode: ThemeMode.dark, child: smallErrorLabel);
  accessibilityTest(componentName: 'Badge avertissement SM', themeMode: ThemeMode.light, child: smallWarningLabel);
  accessibilityTest(componentName: 'Badge avertissement SM', themeMode: ThemeMode.dark, child: smallWarningLabel);
  accessibilityTest(componentName: 'Badge nouveau SM', themeMode: ThemeMode.light, child: smallNewLabel);
  accessibilityTest(componentName: 'Badge nouveau SM', themeMode: ThemeMode.dark, child: smallNewLabel);

  accessibilityTest(componentName: 'Badge info MD', themeMode: ThemeMode.light, child: mediumInfoLabel);
  accessibilityTest(componentName: 'Badge info MD', themeMode: ThemeMode.dark, child: mediumInfoLabel);
  accessibilityTest(componentName: 'Badge succès MD', themeMode: ThemeMode.light, child: mediumSuccessLabel);
  accessibilityTest(componentName: 'Badge succès MD', themeMode: ThemeMode.dark, child: mediumSuccessLabel);
  accessibilityTest(componentName: 'Badge erreur MD', themeMode: ThemeMode.light, child: mediumErrorLabel);
  accessibilityTest(componentName: 'Badge erreur MD', themeMode: ThemeMode.dark, child: mediumErrorLabel);
  accessibilityTest(componentName: 'Badge avertissement MD', themeMode: ThemeMode.light, child: mediumWarningLabel);
  accessibilityTest(componentName: 'Badge avertissement MD', themeMode: ThemeMode.dark, child: mediumWarningLabel);
  accessibilityTest(componentName: 'Badge nouveau MD', themeMode: ThemeMode.light, child: mediumNewLabel);
  accessibilityTest(componentName: 'Badge nouveau MD', themeMode: ThemeMode.dark, child: mediumNewLabel);

  accessibilityTest(
    componentName: 'Badge info SM with icon',
    themeMode: ThemeMode.light,
    child: smallInfoLabelWithIcon,
  );
  accessibilityTest(componentName: 'Badge info SM with icon', themeMode: ThemeMode.dark, child: smallInfoLabelWithIcon);
  accessibilityTest(
    componentName: 'Badge succès SM with icon',
    themeMode: ThemeMode.light,
    child: smallSuccessLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge succès SM with icon',
    themeMode: ThemeMode.dark,
    child: smallSuccessLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge erreur SM with icon',
    themeMode: ThemeMode.light,
    child: smallErrorLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge erreur SM with icon',
    themeMode: ThemeMode.dark,
    child: smallErrorLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge avertissement SM with icon',
    themeMode: ThemeMode.light,
    child: smallWarningLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge avertissement SM with icon',
    themeMode: ThemeMode.dark,
    child: smallWarningLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge nouveau SM with icon',
    themeMode: ThemeMode.light,
    child: smallNewLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge nouveau SM with icon',
    themeMode: ThemeMode.dark,
    child: smallNewLabelWithIcon,
  );

  accessibilityTest(
    componentName: 'Badge info MD with icon',
    themeMode: ThemeMode.light,
    child: mediumInfoLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge info MD with icon',
    themeMode: ThemeMode.dark,
    child: mediumInfoLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge succès MD with icon',
    themeMode: ThemeMode.light,
    child: mediumSuccessLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge succès MD with icon',
    themeMode: ThemeMode.dark,
    child: mediumSuccessLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge erreur MD with icon',
    themeMode: ThemeMode.light,
    child: mediumErrorLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge erreur MD with icon',
    themeMode: ThemeMode.dark,
    child: mediumErrorLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge avertissement MD with icon',
    themeMode: ThemeMode.light,
    child: mediumWarningLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge avertissement MD with icon',
    themeMode: ThemeMode.dark,
    child: mediumWarningLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge nouveau MD with icon',
    themeMode: ThemeMode.light,
    child: mediumNewLabelWithIcon,
  );
  accessibilityTest(
    componentName: 'Badge nouveau MD with icon',
    themeMode: ThemeMode.dark,
    child: mediumNewLabelWithIcon,
  );
}
