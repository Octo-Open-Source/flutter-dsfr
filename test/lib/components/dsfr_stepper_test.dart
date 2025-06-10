import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_stepper.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/a11y_test.skip.dart';

void main() {
  group('Stepper', () {
    var dsfrStepper1 = DsfrStepper(
      currentStep: 1,
      stepsCount: 4,
      stepTitle: 'Titre de l\'étape en cours',
      nextStepTitle: 'Titre de la prochaine étape',
    );
    var dsfrStepper2 = DsfrStepper(
      currentStep: 1,
      stepsCount: 16,
      stepTitle: 'Titre de l\'étape en cours',
      nextStepTitle: 'Titre de la prochaine étape',
    );
    var dsfrStepper3 = DsfrStepper(currentStep: 1, stepsCount: 8, stepTitle: 'Titre de l\'étape en cours');

    accessibilityTest(componentName: 'Stepper 1', themeMode: ThemeMode.light, child: dsfrStepper1);
    accessibilityTest(componentName: 'Stepper 1', themeMode: ThemeMode.dark, child: dsfrStepper1);

    accessibilityTest(componentName: 'Stepper 2', themeMode: ThemeMode.light, child: dsfrStepper2);
    accessibilityTest(componentName: 'Stepper 2', themeMode: ThemeMode.dark, child: dsfrStepper2);

    accessibilityTest(componentName: 'Stepper 3', themeMode: ThemeMode.light, child: dsfrStepper3);
    accessibilityTest(componentName: 'Stepper 3', themeMode: ThemeMode.dark, child: dsfrStepper3);
  });
}
