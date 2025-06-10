import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  group('Checkbox taille SM', () {
    var dsfrCheckbox = DsfrCheckbox(
      label: 'label',
      value: true,
      onChanged: (bool value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrCheckboxWithDescription = DsfrCheckbox(
      label: 'label',
      value: true,
      description: 'description',
      onChanged: (bool value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrCheckboxError = DsfrCheckbox(
      label: 'label',
      value: true,
      componentState: DsfrComponentState.error(errorMessage: 'Erreur'),
      onChanged: (bool value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrCheckboxSuccess = DsfrCheckbox(
      label: 'label',
      value: true,
      componentState: DsfrComponentState.success(message: 'Succès'),
      onChanged: (bool value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrCheckboxDisabled = DsfrCheckbox(
      label: 'label',
      value: true,
      enabled: false,
      onChanged: (bool value) {},
      size: DsfrComponentSize.sm,
    );

    accessibilityTest(componentName: 'checkbox SM', themeMode: ThemeMode.light, child: dsfrCheckbox);
    accessibilityTest(componentName: 'checkbox SM', themeMode: ThemeMode.dark, child: dsfrCheckbox);

    accessibilityTest(
      componentName: 'checkbox SM avec une description',
      themeMode: ThemeMode.light,
      child: dsfrCheckboxWithDescription,
    );
    accessibilityTest(
      componentName: 'checkbox SM avec une description',
      themeMode: ThemeMode.dark,
      child: dsfrCheckboxWithDescription,
    );

    accessibilityTest(componentName: 'checkbox SM Error', themeMode: ThemeMode.light, child: dsfrCheckboxError);
    accessibilityTest(componentName: 'checkbox SM Error', themeMode: ThemeMode.dark, child: dsfrCheckboxError);

    accessibilityTest(componentName: 'checkbox SM Success', themeMode: ThemeMode.light, child: dsfrCheckboxSuccess);
    accessibilityTest(componentName: 'checkbox SM Success', themeMode: ThemeMode.dark, child: dsfrCheckboxSuccess);

    accessibilityTest(componentName: 'checkbox SM disabled', themeMode: ThemeMode.light, child: dsfrCheckboxDisabled);
    accessibilityTest(componentName: 'checkbox SM disabled', themeMode: ThemeMode.dark, child: dsfrCheckboxDisabled);
  });

  group('Checkbox taille MD', () {
    var dsfrCheckboxMd = DsfrCheckbox(label: 'label', value: true, size: DsfrComponentSize.md, onChanged: (value) {});
    var dsfrCheckboxMdWithDescription = DsfrCheckbox(
      label: 'label',
      value: true,
      description: 'description',
      size: DsfrComponentSize.md,
      onChanged: (value) {},
    );
    var dsfrCheckboxMdError = DsfrCheckbox(
      label: 'label',
      value: true,
      componentState: DsfrComponentState.error(errorMessage: 'Erreur'),
      size: DsfrComponentSize.md,
      onChanged: (value) {},
    );
    var dsfrCheckboxMdSuccess = DsfrCheckbox(
      label: 'label',
      value: true,
      componentState: DsfrComponentState.success(message: 'Succès'),
      size: DsfrComponentSize.md,
      onChanged: (value) {},
    );
    var dsfrCheckboxMdDisabled = DsfrCheckbox(
      label: 'label',
      value: true,
      enabled: false,
      size: DsfrComponentSize.md,
      onChanged: (value) {},
    );

    accessibilityTest(componentName: 'checkbox MD', themeMode: ThemeMode.light, child: dsfrCheckboxMd);
    accessibilityTest(componentName: 'checkbox MD', themeMode: ThemeMode.dark, child: dsfrCheckboxMd);

    accessibilityTest(
      componentName: 'checkbox MD with description',
      themeMode: ThemeMode.light,
      child: dsfrCheckboxMdWithDescription,
    );
    accessibilityTest(
      componentName: 'checkbox MD with description',
      themeMode: ThemeMode.dark,
      child: dsfrCheckboxMdWithDescription,
    );

    accessibilityTest(componentName: 'checkbox MD Error', themeMode: ThemeMode.light, child: dsfrCheckboxMdError);
    accessibilityTest(componentName: 'checkbox MD Error', themeMode: ThemeMode.dark, child: dsfrCheckboxMdError);

    accessibilityTest(componentName: 'checkbox MD Success', themeMode: ThemeMode.light, child: dsfrCheckboxMdSuccess);
    accessibilityTest(componentName: 'checkbox MD Success', themeMode: ThemeMode.dark, child: dsfrCheckboxMdSuccess);

    accessibilityTest(componentName: 'checkbox MD Disabled', themeMode: ThemeMode.light, child: dsfrCheckboxMdDisabled);
    accessibilityTest(componentName: 'checkbox MD Disabled', themeMode: ThemeMode.dark, child: dsfrCheckboxMdDisabled);
  });
}
