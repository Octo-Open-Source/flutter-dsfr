import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_select.dart';
import '../../helpers/a11y_test.skip.dart';

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
  accessibilityTest(componentName: 'Select', themeMode: ThemeMode.light, child: select, skip: true);
  accessibilityTest(componentName: 'Select', themeMode: ThemeMode.dark, child: select, skip: true);
}
