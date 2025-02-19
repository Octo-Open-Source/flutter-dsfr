import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class LinksPage extends StatelessWidget {
  const LinksPage({super.key});

  static final model = PageItem(
    title: 'Lien',
    pageBuilder: (final context) => const LinksPage(),
  );

  void _handleTap() {}

  @override
  Widget build(final context) {
    const label = 'Label lien taille MD';

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          DsfrLink.sm(
            label: 'lien taille SM',
            onTap: _handleTap,
          ),
          DsfrLink.md(
            label: label,
            onTap: _handleTap,
          ),
          DsfrLink.lg(
            label: 'lien taille LG',
            onTap: _handleTap,
          ),
          const DsfrLink.md(label: 'lien désactivé (MD)'),
          DsfrLink.md(label: label, onTap: _handleTap),
          DsfrLink.md(
            label: label,
            icon: DsfrIcons.systemArrowLeftLine,
            onTap: _handleTap,
          ),
          DsfrLink.md(
            label: label,
            icon: DsfrIcons.systemArrowLeftLine,
            iconPosition: DsfrLinkIconPosition.end,
            onTap: _handleTap,
          ),
        ],
      ),
    );
  }
}
