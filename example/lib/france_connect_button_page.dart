import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class FranceConnectButtonPage extends StatelessWidget {
  const FranceConnectButtonPage({super.key});

  static final model = PageItem(
    title: 'France connect button',
    pageBuilder: (final context) => const FranceConnectButtonPage(),
  );

  void _handleTap() {}

  @override
  Widget build(final context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        children: [
          FranceConnectButton(),
          FranceConnectButton(isFranceConnectPlus: true),
        ],
      ),
    );
  }
}
