import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_input.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../helpers/a11y_test.skip.dart';
import '../../helpers/scaffold_for_test.skip.dart';

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

  Widget inputWithPlaceholder = DsfrInput(
    label: 'label',
    hintText: 'hint',
    placeholder: 'placeholder',
    onChanged: (final value) {},
  );

  accessibilityTest(componentName: 'input', themeMode: ThemeMode.light, child: input);
  accessibilityTest(componentName: 'input', themeMode: ThemeMode.dark, child: input);

  accessibilityTest(componentName: 'input password', themeMode: ThemeMode.light, child: passwordInput);
  accessibilityTest(componentName: 'input password', themeMode: ThemeMode.dark, child: passwordInput);

  //FIXME: Ces tests ne passe pas car le contraste est pas assez élevé
  accessibilityTest(componentName: 'input disable', themeMode: ThemeMode.light, child: disabledInput, skip: true);
  accessibilityTest(componentName: 'input disable', themeMode: ThemeMode.dark, child: disabledInput, skip: true);

  accessibilityTest(componentName: 'input textArea', themeMode: ThemeMode.light, child: textAreaInput);
  accessibilityTest(componentName: 'input textArea', themeMode: ThemeMode.dark, child: textAreaInput);

  accessibilityTest(componentName: 'input longTextArea', themeMode: ThemeMode.light, child: longTextAreaInput);
  accessibilityTest(componentName: 'input longTextArea', themeMode: ThemeMode.dark, child: longTextAreaInput);

  accessibilityTest(componentName: 'input placeholder', themeMode: ThemeMode.light, child: inputWithPlaceholder);
  accessibilityTest(componentName: 'input placeholder', themeMode: ThemeMode.dark, child: inputWithPlaceholder);

  testWidgets('hintText is displayed as helper text, not as field placeholder', (tester) async {
    await tester.pumpWidget(ScaffoldForTest(themeMode: ThemeMode.light, child: input));

    expect(find.text('hint'), findsOneWidget);
    final textField = tester.widget<TextField>(find.byType(TextField));
    expect(textField.decoration?.hintText, isNull);
  });

  testWidgets('placeholder is displayed inside the field', (tester) async {
    await tester.pumpWidget(ScaffoldForTest(themeMode: ThemeMode.light, child: inputWithPlaceholder));

    expect(find.text('hint'), findsOneWidget);
    final textField = tester.widget<TextField>(find.byType(TextField));
    expect(textField.decoration?.hintText, 'placeholder');
  });
}
