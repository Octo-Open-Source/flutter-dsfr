import 'package:flutter_dsfr/composants/checkboxes/checkbox.dart';
import 'package:flutter_dsfr/composants/checkboxes/dsfr_checkbox_set.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  var dsfrCheckboxSet = DsfrCheckboxSet(
    label: 'label',
    description: 'description',
    checkboxes: [
      DsfrCheckbox.sm(
        label: 'label',
        value: true,
        onChanged: (bool value) {},
      ),
      DsfrCheckbox.sm(
        label: 'label',
        value: false,
        onChanged: (bool value) {},
      ),
    ],
  );

  accessibilityTest(componentName: 'Groupe de checkbox', isLightMode: true, child: dsfrCheckboxSet);
  accessibilityTest(componentName: 'Groupe de checkbox', isLightMode: false, child: dsfrCheckboxSet);
}
