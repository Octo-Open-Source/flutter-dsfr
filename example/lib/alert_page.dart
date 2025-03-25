import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  static final model = PageItem(
    title: 'Alerte',
    pageBuilder: (final context) => const AlertPage(),
  );

  @override
  Widget build(final context) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DsfrAlert(type: DsfrAlertType.info),
          DsfrAlert(type: DsfrAlertType.success),
          DsfrAlert(type: DsfrAlertType.warning),
          DsfrAlert(type: DsfrAlertType.error),
        ],
      );
}
