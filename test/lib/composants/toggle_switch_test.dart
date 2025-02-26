import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/accordions.dart';
import 'package:flutter_dsfr/composants/link.dart';
import 'package:flutter_dsfr/composants/select.dart';
import 'package:flutter_dsfr/composants/tags.dart';
import 'package:flutter_dsfr/composants/toggle_switch.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.dart';

void main() {
  Widget toggleLeft =  DsfrToggleSwitch(
    label: 'Vos favoris',
    labelLocation: DsfrToggleLabelLocation.left,
    value: true,
    onChanged: (final value) {},
  );

  Widget toggleRight = DsfrToggleSwitch(
    label: 'Vos favoris',
    labelLocation: DsfrToggleLabelLocation.right,
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


  accessibilityTest(componentName: 'Toggle Left', isLightMode: true, child: toggleLeft);
  accessibilityTest(componentName: 'Toggle Left', isLightMode: false, child: toggleLeft);

  accessibilityTest(componentName: 'Toggle Right', isLightMode: true, child: toggleRight);
  accessibilityTest(componentName: 'Toggle Right', isLightMode: false, child: toggleRight);

  // FIXME: skip, contraste insuffisant
  accessibilityTest(componentName: 'Toggle Disabled On', isLightMode: true, child: toggleDisabledOn, skip: true);
  accessibilityTest(componentName: 'Toggle Disabled On', isLightMode: false, child: toggleDisabledOn, skip: true);

  // FIXME: skip, contraste insuffisant
  accessibilityTest(componentName: 'Toggle Disabled Off', isLightMode: true, child: toggleDisabledOff, skip: true);
  accessibilityTest(componentName: 'Toggle Disabled Off', isLightMode: false, child: toggleDisabledOff, skip: true);
}
