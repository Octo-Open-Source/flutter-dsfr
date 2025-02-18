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
  bool _toggle1 = false;
  bool _toggle2 = false;

  @override
  Widget build(final context) => SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DsfrToggleSwitch(
              label: 'Vos favoris',
              value: _toggle1,
              onChanged: (final value) {
                setState(() {
                  _toggle1 = value;
                });
              },
            ),
            DsfrToggleSwitch(
              label: 'Vos favoris',
              value: !_toggle2,
              onChanged: (final value) {
                setState(() {
                  _toggle2 = !value;
                });
              },
            ),
            DsfrToggleSwitch(
              label: 'Vos favoris',
              enabled: false,
              value: false,
            ),
            DsfrToggleSwitch(
              label: 'Vos favoris',
              enabled: false,
              value: true,
            ),
          ],
        ),
      );
}
