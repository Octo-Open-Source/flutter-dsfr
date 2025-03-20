import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/stepper.dart';

class StepperPage extends StatelessWidget {
  const StepperPage({super.key});

  static final model = PageItem(
    title: 'Indicateur d\'étapes',
    pageBuilder: (final context) => const StepperPage(),
  );

  @override
  Widget build(final context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 32,
        children: [
          DsfrStepper(
            currentStep: 1,
            stepsCount: 4,
            stepTitle: 'Titre de l\'étape en cours',
            nextStepTitle: 'Titre de la prochaine étape',
          ),
          DsfrStepper(
            currentStep: 2,
            stepsCount: 4,
            stepTitle: 'Titre de l\'étape en cours',
          ),
          DsfrStepper(
            currentStep: 4,
            stepsCount: 4,
            stepTitle: 'Titre de l\'étape en cours',
          ),
          DsfrStepper(
            currentStep: 2,
            stepsCount: 6,
            stepTitle: 'Titre de l\'étape en cours',
          ),
          DsfrStepper(
            currentStep: 3,
            stepsCount: 10,
            stepTitle: 'Titre de l\'étape en cours',
          ),
        ],
      ),
    );
  }
}
