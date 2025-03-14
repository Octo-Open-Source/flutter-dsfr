import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  static final model = PageItem(
    title: 'Case à cocher',
    pageBuilder: (final context) => const CheckboxPage(),
  );

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool _value = false;
  bool _value2 = false;
  bool _valueGroup1 = false;
  bool _valueGroup2 = false;
  bool _valueGroup3 = false;

  @override
  Widget build(final context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        children: [
          DsfrCheckbox.sm(
            label: 'small size',
            value: _value,
            onChanged: (final value) => setState(() {
              _value = value;
            }),
          ),
          const DsfrCheckbox.sm(
            label: 'état désactivé non coché',
            value: false,
            onChanged: null,
            enabled: false,
          ),
          const DsfrCheckbox.sm(
            label: 'état désactivé coché',
            value: true,
            onChanged: null,
            enabled: false,
          ),
          DsfrCheckbox.md(
            label: 'medium size',
            value: _value2,
            onChanged: (final value) => setState(() {
              _value2 = value;
            }),
          ),
          DsfrCheckbox.md(
            label: 'medium size désactivé',
            value: true,
            onChanged: (final value) {},
            enabled: false,
          ),
          DsfrCheckbox.md(
            label: 'medium size avec description',
            description: 'Description',
            value: true,
            onChanged: (final value) {},
          ),
          DsfrCheckbox.md(
            label: 'medium size avec description désactivé',
            description: 'Description désactivé',
            enabled: false,
            value: true,
            onChanged: (final value) {},
          ),
          DsfrCheckbox.md(
            label: 'medium size avec description',
            description: 'case à cocher avec erreur',
            value: false,
            onChanged: (final value) {},
            composantState: DsfrComposantState.error(
              errorMessage: 'Texte d\'erreur obligatoire',
            ),
          ),
          DsfrCheckbox.md(
            label: 'medium size avec description',
            description: 'case à cocher avec succès',
            value: false,
            onChanged: (final value) {},
            composantState: DsfrComposantState.success(
              message: 'Texte de validation',
            ),
          ),
          Row(
            spacing: 12,
            children: [
              Text('row :'),
              Expanded(
                child: DsfrCheckbox.md(
                  label: 'in a row',
                  description: 'description',
                  value: false,
                  onChanged: (final value) {},
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Groupes de cases à cocher :',
              style: DsfrTextStyle.headline3(color: DsfrColorDecisions.textActiveBlueFrance(context)),
            ),
          ),
          DsfrCheckboxSet(
            label: 'Légende',
            checkboxes: [
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _valueGroup1,
                onChanged: (final value) => setState(() {
                  _valueGroup1 = value;
                }),
              ),
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _valueGroup2,
                onChanged: (final value) => setState(() {
                  _valueGroup2 = value;
                }),
              ),
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _valueGroup3,
                onChanged: (final value) => setState(() {
                  _valueGroup3 = value;
                }),
              ),
            ],
          ),
          Divider(),
          DsfrCheckboxSet(
            label: 'Légende',
            checkboxes: [
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _value2,
                description: 'ceci est une description',
                onChanged: (final value) => setState(() {
                  _value2 = value;
                }),
              ),
              DsfrCheckbox.md(
                label: 'Libellé',
                description: 'ceci est une description',
                value: _value2,
                onChanged: (final value) => setState(() {
                  _value2 = value;
                }),
              ),
            ],
          ),
          Divider(),
          DsfrCheckboxSet(
            label: 'Groupe avec description de groupe',
            description: 'Texte de description additionnel',
            checkboxes: [
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _value2,
                onChanged: (final value) => setState(() {
                  _value2 = value;
                }),
              ),
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _value2,
                onChanged: (final value) => setState(() {
                  _value2 = value;
                }),
              ),
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _value2,
                onChanged: (final value) => setState(() {
                  _value2 = value;
                }),
              ),
            ],
          ),
          Divider(),
          DsfrCheckboxSet(
            label: 'Groupe en erreur',
            composantState: DsfrComposantState.error(errorMessage: 'Texte d\'erreur obligatoire'),
            checkboxes: [
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _value2,
                onChanged: (final value) => setState(() {
                  _value2 = value;
                }),
              ),
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _value2,
                onChanged: (final value) => setState(() {
                  _value2 = value;
                }),
              ),
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _value2,
                onChanged: (final value) => setState(() {
                  _value2 = value;
                }),
              ),
            ],
          ),
          Divider(),
          DsfrCheckboxSet(
            label: 'Groupe en succès',
            composantState: DsfrComposantState.success(message: 'Texte de validation optionnel'),
            checkboxes: [
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _value2,
                onChanged: (final value) => setState(() {
                  _value2 = value;
                }),
              ),
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _value2,
                onChanged: (final value) => setState(() {
                  _value2 = value;
                }),
              ),
              DsfrCheckbox.md(
                label: 'Libellé',
                value: _value2,
                onChanged: (final value) => setState(() {
                  _value2 = value;
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
