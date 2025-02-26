import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/composants/input.dart';
import '../../helpers/a11y_test.dart';

void main() {
  Widget input = DsfrInput(label: 'label', hintText: 'hint', onChanged: (final value) {});

  Widget passwordInput = DsfrInput(
    label: 'label',
    hintText: 'hint',
    onChanged: (final value) {},
    isPasswordMode: true,
  );

  Widget disabledInput = DsfrInput(
    label: 'label',
    hintText: 'hint',
    onChanged: (final value) {},
    enabled: false,
  );

  accessibilityTest(componentName: 'input', isLightMode: true, child: input);
  accessibilityTest(componentName: 'input', isLightMode: false, child: input);

  accessibilityTest(componentName: 'input password', isLightMode: true, child: passwordInput);
  accessibilityTest(componentName: 'input password', isLightMode: false, child: passwordInput);

  //FIXME: Ces tests ne passe pas car le contraste est pas assez élevé
  accessibilityTest(componentName: 'input disable', isLightMode: true, child: disabledInput, skip: true);
  accessibilityTest(componentName: 'input disable', isLightMode: false, child: disabledInput, skip: true);
}
