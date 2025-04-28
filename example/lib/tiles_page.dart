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
            DsfrTile(
              size: DsfrComponentSize.sm,
              title: 'Tuile par défaut',
              description: 'Description',
              details: 'Détail',
              badgesAndTags: [
                DsfrBadge(
                    size: DsfrComponentSize.sm,
                    label: 'badge info',
                    type: DsfrBadgeType.information
                ),
              ],
              onTap: () {
                print('Tuile sm cliquée');
              }
            ),
            DsfrTile(
              size: DsfrComponentSize.sm,
              title: 'Tuile non cliquable',
              description: 'Description',
              details: 'Détail',
              imageAsset: 'assets/images/city_hall.svg',
              badgesAndTags: [
                DsfrBadge(
                    size: DsfrComponentSize.sm,
                    label: 'badge info',
                    type: DsfrBadgeType.information
                ),
              ],
            ),
            DsfrTile(
                size: DsfrComponentSize.sm,
                title: 'Tuile par défaut sans icône',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.sm,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                showActionIcon: false,
                onTap: () {
                  print('Tuile sm cliquée');
                }
            ),
            DsfrTile(
                size: DsfrComponentSize.sm,
                title: 'Tuile désactivée',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.sm,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                showActionIcon: true,
                enabled: false,
            ),
            DsfrTile(
              size: DsfrComponentSize.sm,
              backgroundType: DsfrTileBackgroundType.grey,
              title: 'Tuile avec fond gris',
              description: 'Description',
              details: 'Détail',
              imageAsset: 'assets/images/city_hall.svg',
              badgesAndTags: [
                DsfrBadge(
                    size: DsfrComponentSize.sm,
                    label: 'badge info',
                    type: DsfrBadgeType.information
                ),
              ],
              onTap: () {
                print('Tuile sm cliquée');
              }
            ),
            Container(
              padding: EdgeInsets.all(16),
              color: DsfrColorDecisions.backgroundActionLowBlueFrance(context),
              child: DsfrTile(
                size: DsfrComponentSize.sm,
                backgroundType: DsfrTileBackgroundType.lightNoBorder,
                title: 'Tuile avec fond transparent',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.sm,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                onTap: () {
                  print('Tuile sm cliquée');
                }
              ),
            ),
            DsfrTile(
                size: DsfrComponentSize.sm,
                backgroundType: DsfrTileBackgroundType.lightWithShadow,
                title: 'Tuile avec ombre',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.sm,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                onTap: () {
                  print('Tuile sm cliquée');
                }
            ),
            Text(
              'Taille MD',
              style: DsfrTextStyle.headline2(color: DsfrColorDecisions.textTitleGrey(context)),
            ),
            DsfrTile(
                size: DsfrComponentSize.md,
                title: 'Tuile par défaut',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.md,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                onTap: () {
                  print('Tuile md cliquée');
                }
            ),
            DsfrTile(
              size: DsfrComponentSize.md,
              title: 'Tuile non cliquable',
              description: 'Description',
              details: 'Détail',
              imageAsset: 'assets/images/city_hall.svg',
              badgesAndTags: [
                DsfrBadge(
                    size: DsfrComponentSize.md,
                    label: 'badge info',
                    type: DsfrBadgeType.information
                ),
              ],
            ),
            DsfrTile(
                size: DsfrComponentSize.md,
                title: 'Tuile par défaut sans icône',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.md,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                showActionIcon: false,
                onTap: () {
                  print('Tuile md cliquée');
                }
            ),
            DsfrTile(
                size: DsfrComponentSize.md,
                title: 'Tuile désactivée',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.md,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                showActionIcon: true,
                enabled: false,
            ),
            DsfrTile(
                size: DsfrComponentSize.md,
                backgroundType: DsfrTileBackgroundType.grey,
                title: 'Tuile avec fond gris',
                description: 'Description',
                details: 'Détail',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.md,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                onTap: () {
                  print('Tuile md cliquée');
                }
            ),
            Container(
              padding: EdgeInsets.all(16),
              color: DsfrColorDecisions.backgroundActionLowBlueFrance(context),
              child: DsfrTile(
                  size: DsfrComponentSize.md,
                  backgroundType: DsfrTileBackgroundType.lightNoBorder,
                  title: 'Tuile avec fond transparent',
                  description: 'Description',
                  details: 'Détail',
                  badgesAndTags: [
                    DsfrBadge(
                        size: DsfrComponentSize.md,
                        label: 'badge info',
                        type: DsfrBadgeType.information
                    ),
                  ],
                  onTap: () {
                    print('Tuile md cliquée');
                  }
              ),
            ),
            DsfrTile(
                size: DsfrComponentSize.md,
                backgroundType: DsfrTileBackgroundType.lightWithShadow,
                title: 'Tuile avec ombre',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.md,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                onTap: () {
                  print('Tuile md cliquée');
                }
            ),
            Text(
              'Tuile horizontale',
              style: DsfrTextStyle.headline1(color: DsfrColorDecisions.textTitleGrey(context)),
            ),
            Text(
              'Taille SM',
              style: DsfrTextStyle.headline2(color: DsfrColorDecisions.textTitleGrey(context)),
            ),
            DsfrTile(
                size: DsfrComponentSize.sm,
                direction: Axis.horizontal,
                title: 'Tuile par défaut',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.sm,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                onTap: () {
                  print('Tuile sm cliquée');
                }
            ),
            DsfrTile(
              size: DsfrComponentSize.sm,
              direction: Axis.horizontal,
              title: 'Tuile non cliquable',
              description: 'Description',
              details: 'Détail',
              imageAsset: 'assets/images/city_hall.svg',
              badgesAndTags: [
                DsfrBadge(
                    size: DsfrComponentSize.sm,
                    label: 'badge info',
                    type: DsfrBadgeType.information
                ),
              ],
            ),
            DsfrTile(
                size: DsfrComponentSize.sm,
                direction: Axis.horizontal,
                title: 'Tuile par défaut sans icône',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.sm,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                showActionIcon: false,
                onTap: () {
                  print('Tuile sm cliquée');
                }
            ),
            DsfrTile(
              size: DsfrComponentSize.sm,
              direction: Axis.horizontal,
              title: 'Tuile désactivée',
              description: 'Description',
              details: 'Détail',
              badgesAndTags: [
                DsfrBadge(
                    size: DsfrComponentSize.sm,
                    label: 'badge info',
                    type: DsfrBadgeType.information
                ),
              ],
              showActionIcon: true,
              enabled: false,
            ),
            DsfrTile(
                size: DsfrComponentSize.sm,
                direction: Axis.horizontal,
                backgroundType: DsfrTileBackgroundType.grey,
                title: 'Tuile avec fond gris',
                description: 'Description',
                details: 'Détail',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.sm,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                onTap: () {
                  print('Tuile sm cliquée');
                }
            ),
            Container(
              padding: EdgeInsets.all(16),
              color: DsfrColorDecisions.backgroundActionLowBlueFrance(context),
              child: DsfrTile(
                  size: DsfrComponentSize.sm,
                  direction: Axis.horizontal,
                  backgroundType: DsfrTileBackgroundType.lightNoBorder,
                  title: 'Tuile avec fond transparent',
                  description: 'Description',
                  details: 'Détail',
                  badgesAndTags: [
                    DsfrBadge(
                        size: DsfrComponentSize.sm,
                        label: 'badge info',
                        type: DsfrBadgeType.information
                    ),
                  ],
                  onTap: () {
                    print('Tuile sm cliquée');
                  }
              ),
            ),
            DsfrTile(
                size: DsfrComponentSize.sm,
                direction: Axis.horizontal,
                backgroundType: DsfrTileBackgroundType.lightWithShadow,
                title: 'Tuile avec ombre',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.sm,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                onTap: () {
                  print('Tuile sm cliquée');
                }
            ),
            Text(
              'Taille MD',
              style: DsfrTextStyle.headline2(color: DsfrColorDecisions.textTitleGrey(context)),
            ),
            DsfrTile(
                size: DsfrComponentSize.md,
                direction: Axis.horizontal,
                title: 'Tuile par défaut',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.md,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                onTap: () {
                  print('Tuile md cliquée');
                }
            ),
            DsfrTile(
              size: DsfrComponentSize.md,
              direction: Axis.horizontal,
              title: 'Tuile non cliquable',
              description: 'Description',
              details: 'Détail',
              imageAsset: 'assets/images/city_hall.svg',
              badgesAndTags: [
                DsfrBadge(
                    size: DsfrComponentSize.md,
                    label: 'badge info',
                    type: DsfrBadgeType.information
                ),
              ],
            ),
            DsfrTile(
                size: DsfrComponentSize.md,
                direction: Axis.horizontal,
                title: 'Tuile par défaut sans icône',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.md,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                showActionIcon: false,
                onTap: () {
                  print('Tuile md cliquée');
                }
            ),
            DsfrTile(
              size: DsfrComponentSize.md,
              direction: Axis.horizontal,
              title: 'Tuile désactivée',
              description: 'Description',
              details: 'Détail',
              badgesAndTags: [
                DsfrBadge(
                    size: DsfrComponentSize.md,
                    label: 'badge info',
                    type: DsfrBadgeType.information
                ),
              ],
              showActionIcon: true,
              enabled: false,
            ),
            DsfrTile(
                size: DsfrComponentSize.md,
                direction: Axis.horizontal,
                backgroundType: DsfrTileBackgroundType.grey,
                title: 'Tuile avec fond gris',
                description: 'Description',
                details: 'Détail',
                imageAsset: 'assets/images/city_hall.svg',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.md,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                onTap: () {
                  print('Tuile md cliquée');
                }
            ),
            Container(
              padding: EdgeInsets.all(16),
              color: DsfrColorDecisions.backgroundActionLowBlueFrance(context),
              child: DsfrTile(
                  size: DsfrComponentSize.md,
                  direction: Axis.horizontal,
                  backgroundType: DsfrTileBackgroundType.lightNoBorder,
                  title: 'Tuile avec fond transparent',
                  description: 'Description',
                  details: 'Détail',
                  badgesAndTags: [
                    DsfrBadge(
                        size: DsfrComponentSize.md,
                        label: 'badge info',
                        type: DsfrBadgeType.information
                    ),
                  ],
                  onTap: () {
                    print('Tuile md cliquée');
                  }
              ),
            ),
            DsfrTile(
                size: DsfrComponentSize.md,
                direction: Axis.horizontal,
                backgroundType: DsfrTileBackgroundType.lightWithShadow,
                title: 'Tuile avec ombre',
                description: 'Description',
                details: 'Détail',
                badgesAndTags: [
                  DsfrBadge(
                      size: DsfrComponentSize.md,
                      label: 'badge info',
                      type: DsfrBadgeType.information
                  ),
                ],
                onTap: () {
                  print('Tuile md cliquée');
                }
            ),
          ],
        ),
      );
}
