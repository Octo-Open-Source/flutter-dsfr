import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';

class RadiosRichesPage extends StatefulWidget {
  const RadiosRichesPage({super.key});

  static final model = PageItem(
    title: 'Bouton Radio Riche',
    pageBuilder: (final context) => const RadiosRichesPage(),
  );

  @override
  State<RadiosRichesPage> createState() => _RadiosRichePageState();
}

class _RadiosRichePageState extends State<RadiosRichesPage> {
  int _value = 0;

  @override
  Widget build(final context) => ListView(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 98),
        children: [
          DsfrRadioButtonGroup.rich(
            title: 'Radios riches',
            values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
            onCallback: (final p0) {},
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrRadioRichButton<int>(
            title: 'Un',
            value: 1,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Deux',
            value: 2,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Trois',
            value: 3,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Quatre',
            value: 4,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
            enabled: false,
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Avec description',
            description: 'Une description optionnelle',
            value: 4,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Avec icon',
            trailingIcon: Icon(Icons.ac_unit_rounded, size: 32),
            value: 5,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Avec icon et description',
            description: 'Une description optionnelle',
            trailingIcon: Icon(Icons.access_alarm_rounded, size: 32),
            value: 6,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrRadioButtonGroup.rich(
            title: 'Radios riches en erreur',
            values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
            onCallback: (final p0) {},
            componentState: DsfrComponentState.error(errorMessage: 'Texte d\'erreur obligatoire'),
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrRadioButtonGroup.rich(
            title: 'Radios riches en succès',
            values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
            onCallback: (final p0) {},
            componentState: DsfrComponentState.success(message: 'Texte de succès optionnel'),
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrRadioButtonGroup.rich(
            title: 'Succès sans texte',
            values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
            onCallback: (final p0) {},
            componentState: DsfrComponentState.success(),
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrRadioButtonGroup.rich(
            title: 'Radios riches désactivé',
            values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
            onCallback: (final p0) {},
            enabled: false,
          ),
        ],
      );
}
