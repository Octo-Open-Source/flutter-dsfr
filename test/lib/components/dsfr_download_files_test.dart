import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget downloadFileLink = DsfrDownloadFiles.link(
    label: 'Intitulé du fichier à télécharger',
    details: 'PDF - 61,55 Ko',
    onTap: () {},
  );

  Widget downloadFileTileSm = DsfrDownloadFiles.tile(
    size: DsfrComponentSize.sm,
    label: 'Intitulé du fichier à télécharger',
    description: 'Description',
    details: 'PDF - 61,55 Ko',
    imageAsset: 'assets/images/city_hall.svg',
    badgesAndTags: [
      DsfrBadge(size: DsfrComponentSize.sm, label: 'badge 1', type: DsfrBadgeType.information),
      DsfrTag(size: DsfrComponentSize.sm, label: 'tag pour tuile'),
    ],
  );

  Widget downloadFileTileMd = DsfrDownloadFiles.tile(
    size: DsfrComponentSize.md,
    label: 'Intitulé du fichier à télécharger',
    description: 'Description',
    details: 'PDF - 61,55 Ko',
    imageAsset: 'assets/images/city_hall.svg',
    badgesAndTags: [
      DsfrBadge(size: DsfrComponentSize.md, label: 'badge 1', type: DsfrBadgeType.information),
      DsfrTag(size: DsfrComponentSize.md, label: 'tag pour tuile'),
    ],
  );

  Widget downloadFileCardSm = DsfrDownloadFiles.card(
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
  );

  Widget downloadFileCardDisabledSm = DsfrDownloadFiles.card(
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
  );

  accessibilityTest(componentName: 'Download - Link', themeMode: ThemeMode.light, child: downloadFileLink);
  accessibilityTest(componentName: 'Download - Link', themeMode: ThemeMode.dark, child: downloadFileLink);
  accessibilityTest(componentName: 'Download - Tile', themeMode: ThemeMode.light, child: downloadFileTileSm);
  accessibilityTest(componentName: 'Download - Tile', themeMode: ThemeMode.dark, child: downloadFileTileSm);
  accessibilityTest(componentName: 'Download - Tile', themeMode: ThemeMode.light, child: downloadFileTileMd);
  accessibilityTest(componentName: 'Download - Tile', themeMode: ThemeMode.dark, child: downloadFileTileMd);
  accessibilityTest(componentName: 'Download - Card', themeMode: ThemeMode.light, child: downloadFileCardSm);
  accessibilityTest(componentName: 'Download - Card', themeMode: ThemeMode.dark, child: downloadFileCardSm);
  accessibilityTest(
    componentName: 'Download - Card Disabled',
    themeMode: ThemeMode.light,
    child: downloadFileCardDisabledSm,
  );
  accessibilityTest(
    componentName: 'Download - Card Disabled',
    themeMode: ThemeMode.dark,
    child: downloadFileCardDisabledSm,
  );
}
