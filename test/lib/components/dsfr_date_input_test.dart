import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_date_input.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget datePickerInput = DsfrDateInput(
    label: 'label',
    controller: TextEditingController(),
    onChanged: (final value) {},
    firstDate: DateTime(2020),
    lastDate: DateTime(2022),
    initialDate: DateTime(2021),
  );

  accessibilityTest(componentName: 'input datePicker', themeMode: ThemeMode.light, child: datePickerInput);
  accessibilityTest(componentName: 'input datePicker', themeMode: ThemeMode.dark, child: datePickerInput);
}
