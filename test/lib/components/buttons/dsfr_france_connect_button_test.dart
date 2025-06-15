import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/buttons/dsfr_france_connect_button.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  final franceConnectButton = DsfrFranceConnectButton.franceConnect(onTapButton: () {}, onTapLink: () {});

  final franceConnectPlusButton = DsfrFranceConnectButton.franceConnectPlus(onTapButton: () {}, onTapLink: () {});

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

  accessibilityTest(componentName: 'bouton france connect', themeMode: ThemeMode.light, child: franceConnectButton);
  accessibilityTest(componentName: 'bouton france connect', themeMode: ThemeMode.dark, child: franceConnectButton);

  accessibilityTest(
    componentName: 'bouton france connect+',
    themeMode: ThemeMode.light,
    child: franceConnectPlusButton,
  );
  accessibilityTest(componentName: 'bouton france connect+', themeMode: ThemeMode.dark, child: franceConnectPlusButton);

  accessibilityTest(
    componentName: 'bouton france connect désactivé',
    themeMode: ThemeMode.light,
    child: franceConnectDisabledButton,
  );
  accessibilityTest(
    componentName: 'bouton france connect désactivé',
    themeMode: ThemeMode.dark,
    child: franceConnectDisabledButton,
  );

  accessibilityTest(
    componentName: 'bouton france connect+ désactivé',
    themeMode: ThemeMode.light,
    child: franceConnectPlusDisabledButton,
  );
  accessibilityTest(
    componentName: 'bouton france connect+ désactivé',
    themeMode: ThemeMode.dark,
    child: franceConnectPlusDisabledButton,
  );
}
