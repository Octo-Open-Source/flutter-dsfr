import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_input.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget input = DsfrInput(label: 'label', hintText: 'hint', onChanged: (final value) {});

  Widget passwordInput = DsfrInput(label: 'label', hintText: 'hint', onChanged: (final value) {}, isPasswordMode: true);

  Widget disabledInput = DsfrInput(label: 'label', hintText: 'hint', onChanged: (final value) {}, enabled: false);

  Widget textAreaInput = DsfrInput(label: 'label', hintText: 'hint', onChanged: (final value) {}, maxLines: 5);

  Widget longTextAreaInput = DsfrInput(
    label: 'label',
    hintText: 'hint',
    onChanged: (final value) {},
    minLines: 5,
    maxLines: 10,
  );

  accessibilityTest(componentName: 'input', themeMode: ThemeMode.light, child: input);
  accessibilityTest(componentName: 'input', themeMode: ThemeMode.dark, child: input);

  //FIXME: en attente de la MR de fix
  accessibilityTest(componentName: 'input password', themeMode: ThemeMode.light, child: passwordInput, skip: true);
  accessibilityTest(componentName: 'input password', themeMode: ThemeMode.dark, child: passwordInput, skip: true);

  //FIXME: Ces tests ne passe pas car le contraste est pas assez élevé
  accessibilityTest(componentName: 'input disable', themeMode: ThemeMode.light, child: disabledInput, skip: true);
  accessibilityTest(componentName: 'input disable', themeMode: ThemeMode.dark, child: disabledInput, skip: true);

  accessibilityTest(componentName: 'input textArea', themeMode: ThemeMode.light, child: textAreaInput);
  accessibilityTest(componentName: 'input textArea', themeMode: ThemeMode.dark, child: textAreaInput);

  accessibilityTest(componentName: 'input longTextArea', themeMode: ThemeMode.light, child: longTextAreaInput);
  accessibilityTest(componentName: 'input longTextArea', themeMode: ThemeMode.dark, child: longTextAreaInput);
}
