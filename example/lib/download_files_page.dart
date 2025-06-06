import 'package:example/mise_en_page/page_sub_section.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'mise_en_page/page_section.dart';

class DownloadFilesPage extends StatelessWidget {
  const DownloadFilesPage({super.key});

  static final model = PageItem(
    title: 'Téléchargement de fichiers',
    pageBuilder: (final context) => const DownloadFilesPage(),
  );

  @override
  Widget build(final context) => SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 124),
      child: PageSection(
        title: 'Téléchargement de fichiers',
        children: [
          PageSubSection(
            title: 'Lien',
            children: [
              DsfrDownloadFiles(
                type: DsfrDownloadFilesType.link,
                label: 'Intitulé du fichier à télécharger',
                details: 'PDF - 61,55 Ko',
                onTap: () {},
              ),
              DsfrDownloadFiles(
                type: DsfrDownloadFilesType.link,
                label: 'Intitulé du fichier à télécharger sur deux lignes car il est très très très long',
                details: 'PDF - 61,55 Ko',
                onTap: () {},
              ),
              DsfrDownloadFiles(
                type: DsfrDownloadFilesType.link,
                label: 'Intitulé du fichier à télécharger désactivé',
                details: 'PDF - 61,55 Ko',
              ),
            ],
          ),
          PageSubSection(title: 'Carte', children: [Text('TODO')]),
          PageSubSection(title: 'Tuile', children: [Text('TODO')]),
        ],
      ),
    ),
  );
}
