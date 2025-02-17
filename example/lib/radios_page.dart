import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class RadiosPage extends StatefulWidget {
  const RadiosPage({super.key});

  static final model = PageItem(
    title: 'Radios',
    pageBuilder: (final context) => const RadiosPage(),
  );

  @override
  State<RadiosPage> createState() => _RadiosPageState();
}

class _RadiosPageState extends State<RadiosPage> {
  int _value = 0;

  @override
  Widget build(final context) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DsfrRadioRichButtonSet(
            title: 'Radios riches',
            values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
            onCallback: (final p0) {},
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrRadioRichButton<int>(
            title: 'Un',
            value: 0,
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
            title: 'Trois',
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
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrRadioRichButtonSet(
            title: 'Radios riches en erreur',
            values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
            onCallback: (final p0) {},
            isError: true,
            errorText: 'Texte d\'erreur obligatoire',
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrRadioRichButtonSet(
            title: 'Radios riches désactivé',
            values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
            onCallback: (final p0) {},
            isEnable: false,
          ),
        ],
      );
}
