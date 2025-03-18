import 'package:example/mise_en_page/page_section.dart';
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

  void _openFCLink() {
    _launchUrlOnBrowser('https://franceconnect.gouv.fr/');
  }

  void _openFCPlusLink() {
    _launchUrlOnBrowser('https://franceconnect.gouv.fr/france-connect-plus');
  }

  @override
  Widget build(final context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 20,
        children: [
          FranceConnectButton.franceConnect(
            onTapButton: () {},
            onTapLink: () {
              _launchUrlOnBrowser('https://franceconnect.gouv.fr/');
            },
          ),
          FranceConnectButton.franceConnectPlus(
            onTapButton: () {},
            onTapLink: _openFCPlusLink,
          ),
          FranceConnectButton.franceConnect(
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
