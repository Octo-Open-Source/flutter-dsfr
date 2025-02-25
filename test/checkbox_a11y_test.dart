import 'package:flutter_dsfr/composants/checkbox.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'a11y_test.dart';

void main() {
  group('Checkbox taille SM', () {
    accessibilityTest(
      componentName: 'checkbox SM',
      isLightMode: true,
      child: DsfrCheckbox.sm(
        label: 'label',
        value: true,
        onChanged: (bool value) {},
      ),
    );

    accessibilityTest(
      componentName: 'checkbox SM',
      isLightMode: false,
      child: DsfrCheckbox.sm(label: 'label', value: true, onChanged: (bool value) {}),
    );

    accessibilityTest(
      componentName: 'checkbox SM avec une description',
      isLightMode: false,
      child: DsfrCheckbox.sm(label: 'label', value: true, description: 'description', onChanged: (bool value) {}),
    );

    accessibilityTest(
        componentName: 'checkbox SM Error',
        isLightMode: false,
        child: DsfrCheckbox.sm(
            label: 'label',
            value: true,
            composantState: ComposantState(
              state: ComposantStateEnum.error,
              text: 'Erreur',
            ),
            onChanged: (bool value) {}));

    accessibilityTest(
        componentName: 'checkbox SM Success',
        isLightMode: false,
        child: DsfrCheckbox.sm(
            label: 'label',
            value: true,
            composantState: ComposantState(
              state: ComposantStateEnum.success,
              text: 'Succès',
            ),
            onChanged: (bool value) {}));
  });

  group('Checkbox taille MD', () {
    accessibilityTest(
      componentName: 'checkbox MD',
      isLightMode: true,
      child: DsfrCheckbox.md(label: 'label', value: true),
    );

    accessibilityTest(
      componentName: 'checkbox MD',
      isLightMode: false,
      child: DsfrCheckbox.md(label: 'label', value: true),
    );

    accessibilityTest(
        componentName: 'checkbox MD Error',
        isLightMode: false,
        child: DsfrCheckbox.md(
          label: 'label',
          value: true,
          composantState: ComposantState(
            state: ComposantStateEnum.error,
            text: 'Erreur',
          ),
        ));

    accessibilityTest(
        componentName: 'checkbox MD Success',
        isLightMode: false,
        child: DsfrCheckbox.md(
          label: 'label',
          value: true,
          composantState: ComposantState(
            state: ComposantStateEnum.success,
            text: 'Succès',
          ),
        ));
  });
}
