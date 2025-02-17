import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class TogglesPage extends StatefulWidget {
  const TogglesPage({super.key});

  static final model = PageItem(
    title: 'Interrupteur',
    pageBuilder: (final context) => const TogglesPage(),
  );

  @override
  State<TogglesPage> createState() => _TogglesPageState();
}

class _TogglesPageState extends State<TogglesPage> {
  bool _toggle = false;

  @override
  Widget build(final context) => SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DsfrToggleSwitch(
              label: 'Vos favoris',
              value: _toggle,
              onChanged: (final value) {
                setState(() {
                  _toggle = value;
                });
              },
            ),
            DsfrToggleSwitch(
              label: 'Vos favoris',
              value: !_toggle,
              onChanged: (final value) {
                setState(() {
                  _toggle = !value;
                });
              },
            ),
            DsfrToggleSwitch(
              label: 'Vos favoris',
              enabled: false,
              value: false,
              onChanged: (final value) {
                setState(() {
                  _toggle = !_toggle;
                });
              },
            ),
            DsfrToggleSwitch(
              label: 'Vos favoris',
              enabled: false,
              value: true,
              onChanged: (final value) {
                setState(() {
                  _toggle = !_toggle;
                });
              },
            ),
          ],
        ),
      );
}
