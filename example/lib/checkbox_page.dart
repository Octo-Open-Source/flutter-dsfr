import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(final context) => ListView(
        padding: const EdgeInsets.all(16),
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
        ],
      );
}
