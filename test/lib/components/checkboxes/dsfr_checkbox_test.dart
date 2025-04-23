import 'package:flutter_dsfr/components/checkboxes/dsfr_checkbox.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';
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
      componentState: DsfrComponentState.error(
        errorMessage: 'Erreur',
      ),
      onChanged: (bool value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrCheckboxSuccess = DsfrCheckbox(
      label: 'label',
      value: true,
      componentState: DsfrComponentState.success(
        message: 'Succès',
      ),
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
    var dsfrCheckboxMd = DsfrCheckbox(
      label: 'label',
      value: true,
      size: DsfrComponentSize.md,
      onChanged: (value) {},
    );
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
      componentState: DsfrComponentState.error(
        errorMessage: 'Erreur',
      ),
      size: DsfrComponentSize.md,
      onChanged: (value) {},
    );
    var dsfrCheckboxMdSuccess = DsfrCheckbox(
      label: 'label',
      value: true,
      componentState: DsfrComponentState.success(
        message: 'Succès',
      ),
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
