import 'package:flutter_dsfr/components/dsfr_alert.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  final alertInfo =
      DsfrAlert(type: DsfrAlertType.info, title: 'Titre', description: DsfrAlertDescriptionText('description'));
  final alertSuccess =
      DsfrAlert(type: DsfrAlertType.success, title: 'Titre', description: DsfrAlertDescriptionText('description'));
  final alertWarning =
      DsfrAlert(type: DsfrAlertType.warning, title: 'Titre', description: DsfrAlertDescriptionText('description'));
  final alertError =
      DsfrAlert(type: DsfrAlertType.error, title: 'Titre', description: DsfrAlertDescriptionText('description'));

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
      type: DsfrAlertType.info, title: 'Titre', description: DsfrAlertDescriptionText('description'), onClose: () {});

  accessibilityTest(componentName: 'Alerte info', isLightMode: true, child: alertInfo);
  accessibilityTest(componentName: 'Alerte info', isLightMode: false, child: alertInfo);
  accessibilityTest(componentName: 'Alerte success', isLightMode: true, child: alertSuccess);
  accessibilityTest(componentName: 'Alerte success', isLightMode: false, child: alertSuccess);
  accessibilityTest(componentName: 'Alerte warning', isLightMode: true, child: alertWarning);
  accessibilityTest(componentName: 'Alerte warning', isLightMode: false, child: alertWarning);
  accessibilityTest(componentName: 'Alerte error', isLightMode: true, child: alertError);
  accessibilityTest(componentName: 'Alerte error', isLightMode: false, child: alertError);

  accessibilityTest(componentName: 'Alerte sans titre', isLightMode: true, child: alertWithoutTitle);
  accessibilityTest(componentName: 'Alerte sans description', isLightMode: true, child: alertWithoutDescription);
  accessibilityTest(
    componentName: 'Alerte avec une longue description',
    isLightMode: true,
    child: alertWithMultilineDescription,
  );

  accessibilityTest(
    componentName: 'Alerte avec une croix de fermeture',
    isLightMode: true,
    child: alertWithCloseButton,
  );
  accessibilityTest(
    componentName: 'Alerte avec une croix de fermeture',
    isLightMode: false,
    child: alertWithCloseButton,
  );
}
