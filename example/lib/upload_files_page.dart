import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/components/file_uploader.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';

class UploadFilesPage extends StatelessWidget {
  const UploadFilesPage({super.key});

  static final model = PageItem(
    title: 'Ajout de fichiers',
    pageBuilder: (final context) => const UploadFilesPage(),
  );

  @override
  Widget build(final context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 32,
            children: [
              DsfrFileUploader(
                description:
                    "Taille maximale : 500 Mo. Formats supportés : jpg, png, pdf. Plusieurs fichiers possibles. Lorem ipsum dolor sit amet, consectetur adipiscing.",
              ),
              DsfrFileUploader(
                componentState: DsfrComponentState.error(errorMessage: "Format de fichier non supporté"),
                description:
                    "Taille maximale : 500 Mo. Formats supportés : jpg, png, pdf. Plusieurs fichiers possibles. Lorem ipsum dolor sit amet, consectetur adipiscing.",
              ),
              DsfrFileUploader(
                disabled: true,
                description:
                    "Taille maximale : 500 Mo. Formats supportés : jpg, png, pdf. Plusieurs fichiers possibles. Lorem ipsum dolor sit amet, consectetur adipiscing.",
              ),
            ],
          ),
        ),
      );
}
