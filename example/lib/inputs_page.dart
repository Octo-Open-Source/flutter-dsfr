// ignore_for_file: avoid_print

import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({super.key});

  static final model = PageItem(
    title: 'Champ de saisie',
    pageBuilder: (final context) => const InputsPage(),
  );

  @override
  Widget build(final context) => SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Expanded(
                    child: DsfrInput(
                      label: 'Input',
                      onChanged: (final value) {},
                    ),
                  ),
                  Expanded(
                    child: DsfrInput(
                      label: 'Input - désactivé',
                      onChanged: (final value) {},
                      enabled: false,
                    ),
                  ),
                ],
              ),
              DsfrInput(
                label: 'Input avec description',
                hintText: 'Description',
                onChanged: (final value) {},
              ),
              DsfrInput(
                label: 'Input avec description - désactivé',
                hintText: 'Description',
                onChanged: (final value) {},
                enabled: false,
              ),
              DsfrInput(
                label: 'Mot de passe',
                onChanged: print,
                isPasswordMode: true,
              ),
              DsfrInput(
                label: 'Password',
                onChanged: print,
                isPasswordMode: true,
                displayPasswordLabel: 'Show',
              ),
              DsfrInput(
                label: 'Input password - désactivé',
                onChanged: print,
                isPasswordMode: true,
                enabled: false,
              ),
              DsfrInput(
                label: 'Input - error',
                onChanged: print,
                componentState: DsfrComponentState.error(
                  errorMessage: 'texte d\'erreur obligatoire',
                ),
              ),
              DsfrInput(
                label: 'Input - success',
                onChanged: print,
                componentState: DsfrComponentState.success(
                  message: 'texte de validation optionnel',
                ),
              ),
              DsfrInput(
                label: 'Input zone de texte',
                hintText: 'Description',
                minLines: 3,
                maxLines: 5,
                onChanged: (final value) {},
              ),
              DsfrInput(
                label: 'Input zone de texte plusieurs lignes',
                hintText: 'Description',
                maxLines: 10,
                onChanged: (final value) {},
              ),
              DsfrDateInput(
                label: 'Input choix de date',
                hintText: 'Description',
                initialDate: DateTime.now(),
                firstDate: DateTime.now().subtract(Duration(days: 365)),
                lastDate: DateTime.now().add(Duration(days: 365)),
                controller: TextEditingController(),
                onChanged: (final datetime) => print(datetime),
              ),
              DsfrDateInput(
                label: 'Input choix de date en anglais',
                locale: Locale('en'),
                initialDate: DateTime.now(),
                firstDate: DateTime.now().subtract(Duration(days: 365)),
                lastDate: DateTime.now().add(Duration(days: 365)),
                controller: TextEditingController(),
                onChanged: (final datetime) => print(datetime),
              ),
              DsfrDateInput(
                label: 'Input choix de date désactivé',
                enabled: false,
                initialDate: DateTime.now(),
                firstDate: DateTime.now().subtract(Duration(days: 365)),
                lastDate: DateTime.now().add(Duration(days: 365)),
                controller: TextEditingController(),
                onChanged: (final value) {},
              ),
              Text("Input sans label :"),
              DsfrInputHeadless(onChanged: print),
              Text("Input sans label, avec suffix : "),
              const DsfrInputHeadless(suffixText: '€', onChanged: print),
              SizedBox(height: 26),
            ],
          ),
        ),
      );
}
