import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/toggle_switches/dsfr_toggle_switch.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget toggleLeft = DsfrToggleSwitch(
    label: 'Vos favoris',
    labelLocation: DsfrToggleSwitchLabelLocation.left,
    value: true,
    onChanged: (final value) {},
  );

  Widget toggleRight = DsfrToggleSwitch(
    label: 'Vos favoris',
    labelLocation: DsfrToggleSwitchLabelLocation.right,
    value: true,
    onChanged: (final value) {},
  );

  Widget toggleDisabledOn = DsfrToggleSwitch(label: 'Vos favoris', enabled: false, value: false);

  Widget toggleDisabledOff = DsfrToggleSwitch(label: 'Vos favoris', enabled: false, value: true);

  Widget toggleLeftWithDescription = DsfrToggleSwitch(
    label: 'Vos favoris',
    labelLocation: DsfrToggleSwitchLabelLocation.left,
    value: true,
    onChanged: (final value) {},
    description: 'description',
  );

  Widget toggleRightWithDescription = DsfrToggleSwitch(
    label: 'Vos favoris',
    labelLocation: DsfrToggleSwitchLabelLocation.right,
    value: true,
    onChanged: (final value) {},
    description: 'description',
  );

  accessibilityTest(componentName: 'Toggle Left', themeMode: ThemeMode.light, child: toggleLeft);
  accessibilityTest(componentName: 'Toggle Left', themeMode: ThemeMode.dark, child: toggleLeft);

  accessibilityTest(componentName: 'Toggle Right', themeMode: ThemeMode.light, child: toggleRight);
  accessibilityTest(componentName: 'Toggle Right', themeMode: ThemeMode.dark, child: toggleRight);

  accessibilityTest(
    componentName: 'Toggle Left with description',
    themeMode: ThemeMode.light,
    child: toggleLeftWithDescription,
  );
  accessibilityTest(
    componentName: 'Toggle Left with description',
    themeMode: ThemeMode.dark,
    child: toggleLeftWithDescription,
  );

  accessibilityTest(
    componentName: 'Toggle Right with description',
    themeMode: ThemeMode.light,
    child: toggleRightWithDescription,
  );

  accessibilityTest(
    componentName: 'Toggle Right with description',
    themeMode: ThemeMode.dark,
    child: toggleRightWithDescription,
  );

  // FIXME: skip, contraste insuffisant
  accessibilityTest(
    componentName: 'Toggle Disabled On',
    themeMode: ThemeMode.light,
    child: toggleDisabledOn,
    skip: true,
  );
  accessibilityTest(
    componentName: 'Toggle Disabled On',
    themeMode: ThemeMode.dark,
    child: toggleDisabledOn,
    skip: true,
  );

  // FIXME: skip, contraste insuffisant
  accessibilityTest(
    componentName: 'Toggle Disabled Off',
    themeMode: ThemeMode.light,
    child: toggleDisabledOff,
    skip: true,
  );
  accessibilityTest(
    componentName: 'Toggle Disabled Off',
    themeMode: ThemeMode.dark,
    child: toggleDisabledOff,
    skip: true,
  );
}
