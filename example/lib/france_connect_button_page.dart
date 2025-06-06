import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FranceConnectButtonPage extends StatelessWidget {
  const FranceConnectButtonPage({super.key});

  static final model = PageItem(
    title: 'France connect button',
    pageBuilder: (final context) => const FranceConnectButtonPage(),
  );

  Future<void> _launchUrlOnBrowser(String url) async {
    final uri = Uri.parse(url);
    await canLaunchUrl(uri) ? launchUrl(uri) : throw 'Could not launch $url';
  }

  @override
  Widget build(final context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 20,
        children: [
          DsfrFranceConnectButton.franceConnect(
            onTapButton: () {},
            onTapLink: () {
              _launchUrlOnBrowser('https://franceconnect.gouv.fr/');
            },
          ),
          DsfrFranceConnectButton.franceConnectPlus(
            onTapButton: () {},
            onTapLink: () {
              _launchUrlOnBrowser('https://franceconnect.gouv.fr/france-connect-plus');
            },
          ),
          DsfrFranceConnectButton.franceConnect(
            enabled: false,
            onTapButton: () {},
            onTapLink: () {
              _launchUrlOnBrowser('https://franceconnect.gouv.fr/');
            },
          ),
        ],
      ),
    );
  }
}
