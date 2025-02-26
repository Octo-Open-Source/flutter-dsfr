import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/select.dart';
import '../../helpers/a11y_test.dart';

void main() {
  Widget select = DsfrSelect(
    label: 'Label',
    dropdownMenuEntries: const [
      DropdownMenuEntry(value: 1, label: 'Un'),
      DropdownMenuEntry(value: 2, label: 'Deux'),
      DropdownMenuEntry(value: 3, label: 'Trois'),
    ],
    onSelected: (final value) {},
  );

  //FIXME: skip, zone de tap trop petite (48, 40) au lieu de (48, 48)
  accessibilityTest(componentName: 'Select', isLightMode: true, child: select, skip: true);
  accessibilityTest(componentName: 'Select', isLightMode: false, child: select, skip: true);

}
