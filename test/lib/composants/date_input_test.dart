import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/composants/date_input.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget datePickerInput = DateInput(
      label: 'label',
      controller: TextEditingController(),
      onChanged: (final value) {},
      firstDate: DateTime(2020),
      lastDate: DateTime(2022),
      initialDate: DateTime(2021)
  );

  accessibilityTest(componentName: 'input datePicker', isLightMode: true, child: datePickerInput);
  accessibilityTest(componentName: 'input datePicker', isLightMode: false, child: datePickerInput);
}