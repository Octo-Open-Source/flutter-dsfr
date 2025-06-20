import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  static final model = PageItem(title: 'Case à cocher', pageBuilder: (final context) => const CheckboxPage());

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
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 98),
      child: Column(
        spacing: 16,
        children: [
          DsfrCheckbox(
            label: 'small size',
            value: _value,
            onChanged: (final value) => setState(() {
              _value = value;
            }),
            size: DsfrComponentSize.sm,
          ),
          const DsfrCheckbox(
            label: 'état désactivé non coché',
            value: false,
            onChanged: null,
            enabled: false,
            size: DsfrComponentSize.sm,
          ),
          const DsfrCheckbox(
            label: 'état désactivé coché',
            value: true,
            onChanged: null,
            enabled: false,
            size: DsfrComponentSize.sm,
          ),
          DsfrCheckbox(
            label: 'medium size',
            value: _value2,
            onChanged: (final value) => setState(() {
              _value2 = value;
            }),
            size: DsfrComponentSize.md,
          ),
          DsfrCheckbox(
            label: 'medium size désactivé',
            value: true,
            onChanged: (final value) {},
            enabled: false,
            size: DsfrComponentSize.md,
          ),
          DsfrCheckbox(
            label: 'medium size avec description',
            description: 'Description',
            value: true,
            onChanged: (final value) {},
            size: DsfrComponentSize.md,
          ),
          DsfrCheckbox(
            label: 'medium size avec description désactivé',
            description: 'Description désactivé',
            enabled: false,
            value: true,
            onChanged: (final value) {},
            size: DsfrComponentSize.md,
          ),
          DsfrCheckbox(
            label: 'medium size avec description',
            description: 'case à cocher avec erreur',
            value: false,
            onChanged: (final value) {},
            componentState: DsfrComponentState.error(errorMessage: 'Texte d\'erreur obligatoire'),
            size: DsfrComponentSize.md,
          ),
          DsfrCheckbox(
            label: 'medium size avec description',
            description: 'case à cocher avec succès',
            value: false,
            onChanged: (final value) {},
            componentState: DsfrComponentState.success(message: 'Texte de validation'),
            size: DsfrComponentSize.md,
          ),
          Row(
            spacing: 12,
            children: [
              Text('row :'),
              Expanded(
                child: DsfrCheckbox(
                  label: 'in a row',
                  description: 'description',
                  value: false,
                  onChanged: (final value) {},
                  size: DsfrComponentSize.md,
                ),
              ),
            ],
          ),
          DsfrCheckbox(label: 'Multi\nline', value: false, onChanged: (final value) {}, size: DsfrComponentSize.sm),
          DsfrCheckbox(label: 'Multi\nline', value: false, onChanged: (final value) {}, size: DsfrComponentSize.md),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Groupes de cases à cocher :',
              style: DsfrTextStyle.headline3(color: DsfrColorDecisions.textActiveBlueFrance(context)),
            ),
          ),
          DsfrGroup(
            label: 'Légende',
            children: [
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup1,
                onChanged: (final value) => setState(() {
                  _valueGroup1 = value;
                }),
                size: DsfrComponentSize.md,
              ),
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup2,
                onChanged: (final value) => setState(() {
                  _valueGroup2 = value;
                }),
                size: DsfrComponentSize.md,
              ),
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup3,
                onChanged: (final value) => setState(() {
                  _valueGroup3 = value;
                }),
                size: DsfrComponentSize.md,
              ),
            ],
          ),
          Divider(),
          DsfrGroup<DsfrCheckbox>(
            label: 'Légende',
            children: [
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup1,
                onChanged: (final value) => setState(() {
                  _valueGroup1 = value;
                }),
                size: DsfrComponentSize.md,
              ),
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup2,
                onChanged: (final value) => setState(() {
                  _valueGroup2 = value;
                }),
                size: DsfrComponentSize.md,
              ),
            ],
          ),
          Divider(),
          DsfrGroup<DsfrCheckbox>(
            label: 'Groupe avec description de groupe',
            description: 'Texte de description additionnel',
            children: [
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup1,
                onChanged: (final value) => setState(() {
                  _valueGroup1 = value;
                }),
                size: DsfrComponentSize.md,
              ),
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup2,
                onChanged: (final value) => setState(() {
                  _valueGroup2 = value;
                }),
                size: DsfrComponentSize.md,
              ),
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup3,
                onChanged: (final value) => setState(() {
                  _valueGroup3 = value;
                }),
                size: DsfrComponentSize.md,
              ),
            ],
          ),
          Divider(),
          DsfrGroup<DsfrCheckbox>(
            label: 'Groupe en erreur',
            componentState: DsfrComponentState.error(errorMessage: 'Texte d\'erreur obligatoire'),
            children: [
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup1,
                onChanged: (final value) => setState(() {
                  _valueGroup1 = value;
                }),
                size: DsfrComponentSize.md,
              ),
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup2,
                onChanged: (final value) => setState(() {
                  _valueGroup2 = value;
                }),
                size: DsfrComponentSize.md,
              ),
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup3,
                onChanged: (final value) => setState(() {
                  _valueGroup3 = value;
                }),
                size: DsfrComponentSize.md,
              ),
            ],
          ),
          Divider(),
          DsfrGroup<DsfrCheckbox>(
            label: 'Groupe en succès',
            componentState: DsfrComponentState.success(message: 'Texte de validation optionnel'),
            children: [
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup1,
                onChanged: (final value) => setState(() {
                  _valueGroup1 = value;
                }),
                size: DsfrComponentSize.md,
              ),
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup2,
                onChanged: (final value) => setState(() {
                  _valueGroup2 = value;
                }),
                size: DsfrComponentSize.md,
              ),
              DsfrCheckbox(
                label: 'Libellé',
                value: _valueGroup3,
                onChanged: (final value) => setState(() {
                  _valueGroup3 = value;
                }),
                size: DsfrComponentSize.md,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
