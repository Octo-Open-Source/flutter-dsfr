import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

// ignore_for_file: avoid_print
class TuilesPage extends StatefulWidget {
  const TuilesPage({super.key});

  static final model = PageItem(
    title: 'Tuiles',
    pageBuilder: (final context) => const TuilesPage(),
  );

  @override
  State<TuilesPage> createState() => _TuilesPageState();
}

class _TuilesPageState extends State<TuilesPage> {

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
            DsfrTuile.sm(
              title: 'Tuile par défaut',
              description: 'Description',
              detail: 'Détail',
              badgesAndTags: [
                DsfrTag.sm(
                  label: TextSpan(text: 'Tag par défaut'),
                ),
              ],
              onTap: () {
                print('Tuile sm cliquée');
              }
            ),
            DsfrTuile.sm(
              title: 'Tuile non cliquable',
              description: 'Description',
              detail: 'Détail',
              imageAsset: 'assets/images/city_hall.svg',
              badgesAndTags: [
                DsfrTag.sm(
                  label: TextSpan(text: 'Tag par défaut'),
                ),
              ],
            ),
            DsfrTuile.sm(
                title: 'Tuile par défaut sans icône',
                description: 'Description',
                detail: 'Détail',
                badgesAndTags: [
                  DsfrTag.sm(
                    label: TextSpan(text: 'Tag par défaut'),
                  ),
                ],
                showActionIcon: false,
                onTap: () {
                  print('Tuile sm cliquée');
                }
            ),
            DsfrTuile.sm(
              backgroundType: DsfrTuileBackgroundType.grey,
              title: 'Tuile avec fond gris',
              description: 'Description',
              detail: 'Détail',
              imageAsset: 'assets/images/city_hall.svg',
              badgesAndTags: [
                DsfrTag.sm(
                  label: TextSpan(text: 'Tag par défaut'),
                ),
              ],
              onTap: () {
                print('Tuile sm cliquée');
              }
            ),
            Container(
              padding: EdgeInsets.all(16),
              color: DsfrColorDecisions.backgroundActionLowBlueFrance(context),
              child: DsfrTuile.sm(
                backgroundType: DsfrTuileBackgroundType.lightNoBorder,
                title: 'Tuile avec fond transparent',
                description: 'Description',
                detail: 'Détail',
                badgesAndTags: [
                  DsfrBadge.sm(label: 'badge info', type: DsfrBadgeType.information),
                ],
                onTap: () {
                  print('Tuile sm cliquée');
                }
              ),
            ),
            Text(
              'Taille MD',
              style: DsfrTextStyle.headline2(color: DsfrColorDecisions.textTitleGrey(context)),
            ),
            DsfrTuile.md(
                title: 'Tuile par défaut',
                description: 'Description',
                detail: 'Détail',
                badgesAndTags: [
                  DsfrTag.md(
                    label: TextSpan(text: 'Tag par défaut'),
                  ),
                ],
                onTap: () {
                  print('Tuile md cliquée');
                }
            ),
            DsfrTuile.md(
              title: 'Tuile non cliquable',
              description: 'Description',
              detail: 'Détail',
              imageAsset: 'assets/images/city_hall.svg',
              badgesAndTags: [
                DsfrTag.md(
                  label: TextSpan(text: 'Tag par défaut'),
                ),
              ],
            ),
            DsfrTuile.md(
                title: 'Tuile par défaut sans icône',
                description: 'Description',
                detail: 'Détail',
                badgesAndTags: [
                  DsfrTag.md(
                    label: TextSpan(text: 'Tag par défaut'),
                  ),
                ],
                showActionIcon: false,
                onTap: () {
                  print('Tuile md cliquée');
                }
            ),
            DsfrTuile.md(
                backgroundType: DsfrTuileBackgroundType.grey,
                title: 'Tuile avec fond gris',
                description: 'Description',
                detail: 'Détail',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrTag.md(
                    label: TextSpan(text: 'Tag par défaut'),
                  ),
                ],
                onTap: () {
                  print('Tuile md cliquée');
                }
            ),
            Container(
              padding: EdgeInsets.all(16),
              color: DsfrColorDecisions.backgroundActionLowBlueFrance(context),
              child: DsfrTuile.md(
                  backgroundType: DsfrTuileBackgroundType.lightNoBorder,
                  title: 'Tuile avec fond transparent',
                  description: 'Description',
                  detail: 'Détail',
                  badgesAndTags: [
                    DsfrBadge.md(label: 'badge info', type: DsfrBadgeType.information),
                  ],
                  onTap: () {
                    print('Tuile md cliquée');
                  }
              ),
            ),
          ],
        ),
      );
}
