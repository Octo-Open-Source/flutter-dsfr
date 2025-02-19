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
  Widget build(final context) => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: DsfrInput(
                label: 'Input',
                onChanged: (final value) {},
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: DsfrInput(
                label: 'Input - désactivé',
                onChanged: (final value) {},
                enabled: false,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        DsfrInput(
          label: 'Input avec description',
          hintText: 'Description',
          onChanged: (final value) {},
        ),
        SizedBox(height: 16),
        DsfrInput(
          label: 'Input avec description - désactivé',
          hintText: 'Description',
          onChanged: (final value) {},
          enabled: false,
        ),
        SizedBox(height: 16),
        DsfrInput(
          label: 'Input password',
          onChanged: print,
          isPasswordMode: true,
        ),
        SizedBox(height: 16),
        DsfrInput(
          label: 'Input password - désactivé',
          onChanged: print,
          isPasswordMode: true,
          enabled: false,
        ),
        SizedBox(height: 16),
        Text("Input sans label", style: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDefaultGrey(context))),
        SizedBox(height: 24),
        DsfrInputHeadless(onChanged: print),
        SizedBox(height: 16),
        Text("Input sans label, avec suffix", style: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDefaultGrey(context))),
        SizedBox(height: 24),
        const DsfrInputHeadless(suffixText: '€', onChanged: print),
        SizedBox(height: 150),
      ],
    ),
  );
}
