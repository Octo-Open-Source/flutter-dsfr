import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

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
            label: 'Input password',
            onChanged: print,
            isPasswordMode: true,
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
            composantState: DsfrComposantState.error(
              errorMessage: 'texte d\'erreur obligatoire',
            ),
          ),
          DsfrInput(
            label: 'Input - success',
            onChanged: print,
            composantState: DsfrComposantState.success(
              message: 'texte de validation optionnel',
            ),
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
