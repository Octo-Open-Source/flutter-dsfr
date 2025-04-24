import 'package:flutter/cupertino.dart';
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

  Widget toggleDisabledOn = DsfrToggleSwitch(
    label: 'Vos favoris',
    enabled: false,
    value: false,
  );

  Widget toggleDisabledOff = DsfrToggleSwitch(
    label: 'Vos favoris',
    enabled: false,
    value: true,
  );

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

  accessibilityTest(componentName: 'Toggle Left', isLightMode: true, child: toggleLeft);
  accessibilityTest(componentName: 'Toggle Left', isLightMode: false, child: toggleLeft);

  accessibilityTest(componentName: 'Toggle Right', isLightMode: true, child: toggleRight);
  accessibilityTest(componentName: 'Toggle Right', isLightMode: false, child: toggleRight);

  accessibilityTest(
    componentName: 'Toggle Left with description',
    isLightMode: true,
    child: toggleLeftWithDescription,
  );
  accessibilityTest(
    componentName: 'Toggle Left with description',
    isLightMode: false,
    child: toggleLeftWithDescription,
  );

  accessibilityTest(
    componentName: 'Toggle Right with description',
    isLightMode: true,
    child: toggleRightWithDescription,
  );

  accessibilityTest(
    componentName: 'Toggle Right with description',
    isLightMode: false,
    child: toggleRightWithDescription,
  );

  // FIXME: skip, contraste insuffisant
  accessibilityTest(componentName: 'Toggle Disabled On', isLightMode: true, child: toggleDisabledOn, skip: true);
  accessibilityTest(componentName: 'Toggle Disabled On', isLightMode: false, child: toggleDisabledOn, skip: true);

  // FIXME: skip, contraste insuffisant
  accessibilityTest(componentName: 'Toggle Disabled Off', isLightMode: true, child: toggleDisabledOff, skip: true);
  accessibilityTest(componentName: 'Toggle Disabled Off', isLightMode: false, child: toggleDisabledOff, skip: true);
}
