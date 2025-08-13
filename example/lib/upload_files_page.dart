import 'package:example/mise_en_page/page_sub_section.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

import 'mise_en_page/page_section.dart';

class UploadFilesPage extends StatelessWidget {
  const UploadFilesPage({super.key});

  static final model = PageItem(title: 'Ajout de fichiers', pageBuilder: (final context) => const UploadFilesPage());

  @override
  Widget build(final context) => SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 124),
      child: PageSection(
        title: 'Ajout de fichiers',
        children: [
          PageSubSection(
            title: 'Cas nominal',
            children: [
              DsfrFileUploader(
                description:
                    "Taille maximale : 500 Mo. Formats supportés : jpg, png, pdf. Plusieurs fichiers possibles. Lorem ipsum dolor sit amet, consectetur adipiscing.",
                onBrowse: () {},
              ),
            ],
          ),
          PageSubSection(
            title: 'Cas d\'erreur',
            children: [
              DsfrFileUploader(
                componentState: DsfrComponentState.error(errorMessage: "Format de fichier non supporté"),
                description:
                    "Taille maximale : 500 Mo. Formats supportés : jpg, png, pdf. Plusieurs fichiers possibles. Lorem ipsum dolor sit amet, consectetur adipiscing.",
                onBrowse: () {},
              ),
            ],
          ),
          PageSubSection(
            title: 'Cas désactivé',
            children: [
              DsfrFileUploader(
                disabled: true,
                description:
                    "Taille maximale : 500 Mo. Formats supportés : jpg, png, pdf. Plusieurs fichiers possibles. Lorem ipsum dolor sit amet, consectetur adipiscing.",
                onBrowse: () {},
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
