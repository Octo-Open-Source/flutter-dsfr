import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_alert.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  final alertInfo = DsfrAlert(
    type: DsfrAlertType.info,
    title: 'Titre',
    description: DsfrAlertDescriptionText('description'),
  );
  final alertSuccess = DsfrAlert(
    type: DsfrAlertType.success,
    title: 'Titre',
    description: DsfrAlertDescriptionText('description'),
  );
  final alertWarning = DsfrAlert(
    type: DsfrAlertType.warning,
    title: 'Titre',
    description: DsfrAlertDescriptionText('description'),
  );
  final alertError = DsfrAlert(
    type: DsfrAlertType.error,
    title: 'Titre',
    description: DsfrAlertDescriptionText('description'),
  );

  final alertWithoutTitle = DsfrAlert(type: DsfrAlertType.info, description: DsfrAlertDescriptionText('description'));
  final alertWithoutDescription = DsfrAlert(type: DsfrAlertType.info, title: 'title');
  final alertWithMultilineDescription = DsfrAlert(
    type: DsfrAlertType.info,
    title: 'title',
    description: DsfrAlertDescriptionText(
      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
  );

  final alertWithCloseButton = DsfrAlert(
    type: DsfrAlertType.info,
    title: 'Titre',
    description: DsfrAlertDescriptionText('description'),
    onClose: () {},
  );

  accessibilityTest(componentName: 'Alerte info', themeMode: ThemeMode.light, child: alertInfo);
  accessibilityTest(componentName: 'Alerte info', themeMode: ThemeMode.dark, child: alertInfo);
  accessibilityTest(componentName: 'Alerte success', themeMode: ThemeMode.light, child: alertSuccess);
  accessibilityTest(componentName: 'Alerte success', themeMode: ThemeMode.dark, child: alertSuccess);
  accessibilityTest(componentName: 'Alerte warning', themeMode: ThemeMode.light, child: alertWarning);
  accessibilityTest(componentName: 'Alerte warning', themeMode: ThemeMode.dark, child: alertWarning);
  accessibilityTest(componentName: 'Alerte error', themeMode: ThemeMode.light, child: alertError);
  accessibilityTest(componentName: 'Alerte error', themeMode: ThemeMode.dark, child: alertError);

  accessibilityTest(componentName: 'Alerte sans titre', themeMode: ThemeMode.light, child: alertWithoutTitle);
  accessibilityTest(
    componentName: 'Alerte sans description',
    themeMode: ThemeMode.light,
    child: alertWithoutDescription,
  );
  accessibilityTest(
    componentName: 'Alerte avec une longue description',
    themeMode: ThemeMode.light,
    child: alertWithMultilineDescription,
  );

  accessibilityTest(
    componentName: 'Alerte avec une croix de fermeture',
    themeMode: ThemeMode.light,
    child: alertWithCloseButton,
  );
  accessibilityTest(
    componentName: 'Alerte avec une croix de fermeture',
    themeMode: ThemeMode.dark,
    child: alertWithCloseButton,
  );
}
