import 'package:flutter_dsfr/components/checkboxes/checkbox.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  group('Checkbox taille SM', () {
    var dsfrCheckbox = DsfrCheckbox.sm(
      label: 'label',
      value: true,
      onChanged: (bool value) {},
    );
    var dsfrCheckboxWithDescription = DsfrCheckbox.sm(
      label: 'label',
      value: true,
      description: 'description',
      onChanged: (bool value) {},
    );
    var dsfrCheckboxError = DsfrCheckbox.sm(
      label: 'label',
      value: true,
      componentState: DsfrComponentState.error(
        errorMessage: 'Erreur',
      ),
      onChanged: (bool value) {},
    );
    var dsfrCheckboxSuccess = DsfrCheckbox.sm(
      label: 'label',
      value: true,
      componentState: DsfrComponentState.success(
        message: 'Succès',
      ),
      onChanged: (bool value) {},
    );
    var dsfrCheckboxDisabled = DsfrCheckbox.sm(
      label: 'label',
      value: true,
      enabled: false,
      onChanged: (bool value) {},
    );

    accessibilityTest(componentName: 'checkbox SM', isLightMode: true, child: dsfrCheckbox);
    accessibilityTest(componentName: 'checkbox SM', isLightMode: false, child: dsfrCheckbox);

    accessibilityTest(
      componentName: 'checkbox SM avec une description',
      isLightMode: true,
      child: dsfrCheckboxWithDescription,
    );
    accessibilityTest(
      componentName: 'checkbox SM avec une description',
      isLightMode: false,
      child: dsfrCheckboxWithDescription,
    );

    accessibilityTest(componentName: 'checkbox SM Error', isLightMode: true, child: dsfrCheckboxError);
    accessibilityTest(componentName: 'checkbox SM Error', isLightMode: false, child: dsfrCheckboxError);

    accessibilityTest(componentName: 'checkbox SM Success', isLightMode: true, child: dsfrCheckboxSuccess);
    accessibilityTest(componentName: 'checkbox SM Success', isLightMode: false, child: dsfrCheckboxSuccess);

    accessibilityTest(componentName: 'checkbox SM disabled', isLightMode: true, child: dsfrCheckboxDisabled);
    accessibilityTest(componentName: 'checkbox SM disabled', isLightMode: false, child: dsfrCheckboxDisabled);
  });

  group('Checkbox taille MD', () {
    var dsfrCheckboxMd = DsfrCheckbox.md(label: 'label', value: true);
    var dsfrCheckboxMdWithDescription = DsfrCheckbox.md(label: 'label', value: true, description: 'description');
    var dsfrCheckboxMdError = DsfrCheckbox.md(
      label: 'label',
      value: true,
      componentState: DsfrComponentState.error(
        errorMessage: 'Erreur',
      ),
    );
    var dsfrCheckboxMdSuccess = DsfrCheckbox.md(
      label: 'label',
      value: true,
      componentState: DsfrComponentState.success(
        message: 'Succès',
      ),
    );
    var dsfrCheckboxMdDisabled = DsfrCheckbox.md(label: 'label', value: true, enabled: false);

    accessibilityTest(componentName: 'checkbox MD', isLightMode: true, child: dsfrCheckboxMd);
    accessibilityTest(componentName: 'checkbox MD', isLightMode: false, child: dsfrCheckboxMd);

    accessibilityTest(
      componentName: 'checkbox MD with description',
      isLightMode: true,
      child: dsfrCheckboxMdWithDescription,
    );
    accessibilityTest(
      componentName: 'checkbox MD with description',
      isLightMode: false,
      child: dsfrCheckboxMdWithDescription,
    );

    accessibilityTest(componentName: 'checkbox MD Error', isLightMode: true, child: dsfrCheckboxMdError);
    accessibilityTest(componentName: 'checkbox MD Error', isLightMode: false, child: dsfrCheckboxMdError);

    accessibilityTest(componentName: 'checkbox MD Success', isLightMode: true, child: dsfrCheckboxMdSuccess);
    accessibilityTest(componentName: 'checkbox MD Success', isLightMode: false, child: dsfrCheckboxMdSuccess);

    accessibilityTest(componentName: 'checkbox MD Disabled', isLightMode: true, child: dsfrCheckboxMdDisabled);
    accessibilityTest(componentName: 'checkbox MD Disabled', isLightMode: false, child: dsfrCheckboxMdDisabled);
  });
}
