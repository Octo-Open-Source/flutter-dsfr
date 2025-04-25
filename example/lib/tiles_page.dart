import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

// ignore_for_file: avoid_print
class TilesPage extends StatefulWidget {
  const TilesPage({super.key});

  static final model = PageItem(
    title: 'Tuiles',
    pageBuilder: (final context) => const TilesPage(),
  );

  @override
  State<TilesPage> createState() => _TilesPageState();
}

class _TilesPageState extends State<TilesPage> {
  @override
  Widget build(final context) => SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text(
              'Tuile verticale',
              style: DsfrTextStyle.headline1(color: DsfrColorDecisions.textTitleGrey(context)),
            ),
            Text(
              'Taille SM',
              style: DsfrTextStyle.headline2(color: DsfrColorDecisions.textTitleGrey(context)),
            ),
            DsfrTile.sm(
                title: 'Tuile par défaut',
                description: 'Description',
                detail: 'Détail',
                badgesAndTags: [
                  DsfrTag(
                    label: TextSpan(text: 'Tag par défaut'),
                    size: DsfrComponentSize.sm,
                  ),
                ],
                onTap: () {
                  print('Tuile sm cliquée');
                }),
            DsfrTile.sm(
              title: 'Tuile non cliquable',
              description: 'Description',
              detail: 'Détail',
              imageAsset: 'assets/images/city_hall.svg',
              badgesAndTags: [
                DsfrTag(
                  label: TextSpan(text: 'Tag par défaut'),
                  size: DsfrComponentSize.sm,
                ),
              ],
            ),
            DsfrTile.sm(
                title: 'Tuile par défaut sans icône',
                description: 'Description',
                detail: 'Détail',
                badgesAndTags: [
                  DsfrTag(
                    label: TextSpan(text: 'Tag par défaut'),
                    size: DsfrComponentSize.sm,
                  ),
                ],
                showActionIcon: false,
                onTap: () {
                  print('Tuile sm cliquée');
                }),
            DsfrTile.sm(
                backgroundType: DsfrTileBackgroundType.grey,
                title: 'Tuile avec fond gris',
                description: 'Description',
                detail: 'Détail',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrTag(
                    label: TextSpan(text: 'Tag par défaut'),
                    size: DsfrComponentSize.sm,
                  ),
                ],
                onTap: () {
                  print('Tuile sm cliquée');
                }),
            Container(
              padding: EdgeInsets.all(16),
              color: DsfrColorDecisions.backgroundActionLowBlueFrance(context),
              child: DsfrTile.sm(
                  backgroundType: DsfrTileBackgroundType.lightNoBorder,
                  title: 'Tuile avec fond transparent',
                  description: 'Description',
                  detail: 'Détail',
                  badgesAndTags: [
                    DsfrBadge(label: 'badge info', type: DsfrBadgeType.information, size: DsfrComponentSize.sm),
                  ],
                  onTap: () {
                    print('Tuile sm cliquée');
                  }),
            ),
            DsfrTile.sm(
                backgroundType: DsfrTileBackgroundType.lightWithShadow,
                title: 'Tuile avec ombre',
                description: 'Description',
                detail: 'Détail',
                badgesAndTags: [
                  DsfrTag(
                    label: TextSpan(text: 'Tag par défaut'),
                    size: DsfrComponentSize.sm,
                  ),
                ],
                onTap: () {
                  print('Tuile sm cliquée');
                }),
            Text(
              'Taille MD',
              style: DsfrTextStyle.headline2(color: DsfrColorDecisions.textTitleGrey(context)),
            ),
            DsfrTile.md(
                title: 'Tuile par défaut',
                description: 'Description',
                detail: 'Détail',
                badgesAndTags: [
                  DsfrTag(
                    label: TextSpan(text: 'Tag par défaut'),
                    size: DsfrComponentSize.md,
                  ),
                ],
                onTap: () {
                  print('Tuile md cliquée');
                }),
            DsfrTile.md(
              title: 'Tuile non cliquable',
              description: 'Description',
              detail: 'Détail',
              imageAsset: 'assets/images/city_hall.svg',
              badgesAndTags: [
                DsfrTag(
                  label: TextSpan(text: 'Tag par défaut'),
                  size: DsfrComponentSize.md,
                ),
              ],
            ),
            DsfrTile.md(
                title: 'Tuile par défaut sans icône',
                description: 'Description',
                detail: 'Détail',
                badgesAndTags: [
                  DsfrTag(
                    label: TextSpan(text: 'Tag par défaut'),
                    size: DsfrComponentSize.md,
                  ),
                ],
                showActionIcon: false,
                onTap: () {
                  print('Tuile md cliquée');
                }),
            DsfrTile.md(
                backgroundType: DsfrTileBackgroundType.grey,
                title: 'Tuile avec fond gris',
                description: 'Description',
                detail: 'Détail',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrTag(
                    label: TextSpan(text: 'Tag par défaut'),
                    size: DsfrComponentSize.md,
                  ),
                ],
                onTap: () {
                  print('Tuile md cliquée');
                }),
            Container(
              padding: EdgeInsets.all(16),
              color: DsfrColorDecisions.backgroundActionLowBlueFrance(context),
              child: DsfrTile.md(
                  backgroundType: DsfrTileBackgroundType.lightNoBorder,
                  title: 'Tuile avec fond transparent',
                  description: 'Description',
                  detail: 'Détail',
                  badgesAndTags: [
                    DsfrBadge(label: 'badge info', type: DsfrBadgeType.information, size: DsfrComponentSize.md),
                  ],
                  onTap: () {
                    print('Tuile md cliquée');
                  }),
            ),
            DsfrTile.md(
                backgroundType: DsfrTileBackgroundType.lightWithShadow,
                title: 'Tuile avec ombre',
                description: 'Description',
                detail: 'Détail',
                badgesAndTags: [
                  DsfrTag(
                    label: TextSpan(text: 'Tag par défaut'),
                    size: DsfrComponentSize.md,
                  ),
                ],
                onTap: () {
                  print('Tuile md cliquée');
                }),
          ],
        ),
      );
}
