import 'package:flutter_dsfr/src/components/buttons/dsfr_france_connect_button.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  final franceConnectButton = DsfrFranceConnectButton.franceConnect(
    onTapButton: () {},
    onTapLink: () {},
  );

  final franceConnectPlusButton = DsfrFranceConnectButton.franceConnectPlus(
    onTapButton: () {},
    onTapLink: () {},
  );

  final franceConnectDisabledButton = DsfrFranceConnectButton.franceConnect(
    onTapButton: () {},
    onTapLink: () {},
    enabled: false,
  );

  final franceConnectPlusDisabledButton = DsfrFranceConnectButton.franceConnectPlus(
    onTapButton: () {},
    onTapLink: () {},
    enabled: false,
  );

  accessibilityTest(componentName: 'bouton france connect', isLightMode: true, child: franceConnectButton);
  accessibilityTest(componentName: 'bouton france connect', isLightMode: false, child: franceConnectButton);

  accessibilityTest(componentName: 'bouton france connect+', isLightMode: true, child: franceConnectPlusButton);
  accessibilityTest(componentName: 'bouton france connect+', isLightMode: false, child: franceConnectPlusButton);

  accessibilityTest(
      componentName: 'bouton france connect désactivé', isLightMode: true, child: franceConnectDisabledButton);
  accessibilityTest(
      componentName: 'bouton france connect désactivé', isLightMode: false, child: franceConnectDisabledButton);

  accessibilityTest(
      componentName: 'bouton france connect+ désactivé', isLightMode: true, child: franceConnectPlusDisabledButton);
  accessibilityTest(
      componentName: 'bouton france connect+ désactivé', isLightMode: false, child: franceConnectPlusDisabledButton);
}
