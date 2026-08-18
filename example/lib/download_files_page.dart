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
              DsfrDownloadFiles.link(
                label: 'Intitulé du fichier à télécharger',
                details: 'PDF - 61,55 Ko',
                onTap: () {},
              ),
              DsfrDownloadFiles.link(
                label: 'Intitulé du fichier à télécharger sur deux lignes car il est très très très long',
                details: 'PDF - 61,55 Ko',
                onTap: () {},
              ),
              DsfrDownloadFiles.link(label: 'Intitulé du fichier à télécharger désactivé', details: 'PDF - 61,55 Ko'),
            ],
          ),
          PageSubSection(
            title: 'Carte',
            children: [
              Text('Taille SM', style: DsfrTextStyle.headline2(color: DsfrColorDecisions.textTitleGrey(context))),
              DsfrDownloadFiles.card(
                size: DsfrComponentSize.sm,
                label: 'Intitulé du fichier à télécharger',
                description: 'Description texte SM',
                details: 'Détails',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrBadge(size: DsfrComponentSize.sm, label: 'badge 1', type: DsfrBadgeType.information),
                  DsfrTag(size: DsfrComponentSize.sm, label: 'tag pour tuile'),
                ],
                actionDetails: 'PDF - 61,55 Ko',
                onTap: () {},
              ),
              DsfrDownloadFiles.card(
                size: DsfrComponentSize.sm,
                label: 'Intitulé du fichier à télécharger',
                description: 'Description texte SM',
                details: 'Détails',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrBadge(size: DsfrComponentSize.sm, label: 'badge 1', type: DsfrBadgeType.information),
                  DsfrTag(size: DsfrComponentSize.sm, label: 'tag pour tuile'),
                ],
                actionDetails: 'PDF - 61,55 Ko',
              ),
              Text('Taille MD', style: DsfrTextStyle.headline2(color: DsfrColorDecisions.textTitleGrey(context))),
              DsfrDownloadFiles.card(
                size: DsfrComponentSize.md,
                label: 'Intitulé du fichier à télécharger',
                description: 'Description texte SM',
                details: 'Détails',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrBadge(size: DsfrComponentSize.sm, label: 'badge 1', type: DsfrBadgeType.information),
                  DsfrTag(size: DsfrComponentSize.sm, label: 'tag pour tuile'),
                ],
                actionDetails: 'PDF - 61,55 Ko',
                onTap: () {},
              ),
              DsfrDownloadFiles.card(
                size: DsfrComponentSize.md,
                label: 'Intitulé du fichier à télécharger',
                description: 'Description texte SM',
                details: 'Détails',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrBadge(size: DsfrComponentSize.sm, label: 'badge 1', type: DsfrBadgeType.information),
                  DsfrTag(size: DsfrComponentSize.sm, label: 'tag pour tuile'),
                ],
                actionDetails: 'PDF - 61,55 Ko',
              ),
            ],
          ),
          PageSubSection(
            title: 'Tuile',
            children: [
              Text('Taille SM', style: DsfrTextStyle.headline2(color: DsfrColorDecisions.textTitleGrey(context))),
              DsfrDownloadFiles.tile(
                size: DsfrComponentSize.sm,
                label: 'Intitulé du fichier à télécharger',
                description: 'Description',
                details: 'PDF - 61,55 Ko',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrBadge(size: DsfrComponentSize.sm, label: 'badge 1', type: DsfrBadgeType.information),
                  DsfrTag(size: DsfrComponentSize.sm, label: 'tag pour tuile'),
                ],
                onTap: () {},
              ),
              DsfrDownloadFiles.tile(
                size: DsfrComponentSize.sm,
                label: 'Intitulé du fichier à télécharger désactivé',
                description: 'Description',
                details: 'PDF - 61,55 Ko',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrBadge(size: DsfrComponentSize.sm, label: 'badge 1', type: DsfrBadgeType.information),
                  DsfrTag(size: DsfrComponentSize.sm, label: 'tag pour tuile'),
                ],
                onTap: () {},
                enabled: false,
              ),
              Text('Taille MD', style: DsfrTextStyle.headline2(color: DsfrColorDecisions.textTitleGrey(context))),
              DsfrDownloadFiles.tile(
                size: DsfrComponentSize.md,
                label: 'Intitulé du fichier à télécharger',
                description: 'Description',
                details: 'PDF - 61,55 Ko',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrBadge(size: DsfrComponentSize.md, label: 'badge 1', type: DsfrBadgeType.information),
                ],
                onTap: () {},
              ),
              DsfrDownloadFiles.tile(
                size: DsfrComponentSize.md,
                label: 'Intitulé du fichier à télécharger désactivé',
                description: 'Description',
                details: 'PDF - 61,55 Ko',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrBadge(size: DsfrComponentSize.md, label: 'badge 1', type: DsfrBadgeType.information),
                  DsfrTag(size: DsfrComponentSize.md, label: 'tag pour tuile'),
                ],
                onTap: () {},
                enabled: false,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
