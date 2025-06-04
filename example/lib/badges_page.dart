import 'package:example/mise_en_page/page_section.dart';
import 'package:example/mise_en_page/page_sub_section.dart';

import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class BadgesPage extends StatelessWidget {
  const BadgesPage({super.key});

  static final model = PageItem(title: 'Badges', pageBuilder: (final context) => const BadgesPage());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 98),
        child: Column(
          spacing: 16,
          children: [
            PageSection(
              title: 'Badge sans icône',
              children: [
                PageSubSection(
                  title: 'taille sm',
                  children: [
                    DsfrBadge(label: 'badge info', type: DsfrBadgeType.information, size: DsfrComponentSize.sm),
                    DsfrBadge(label: 'badge succès', type: DsfrBadgeType.success, size: DsfrComponentSize.sm),
                    DsfrBadge(label: 'badge erreur', type: DsfrBadgeType.error, size: DsfrComponentSize.sm),
                    DsfrBadge(label: 'badge avertissement', type: DsfrBadgeType.warning, size: DsfrComponentSize.sm),
                    DsfrBadge(label: 'badge nouveau', type: DsfrBadgeType.news, size: DsfrComponentSize.sm),
                    DsfrBadge(
                      label: 'badge personnalisé',
                      type: DsfrBadgeType.custom,
                      backgroundCustomColor: DsfrColors.greenArchipel100,
                      textCustomColor: DsfrColors.greenArchipelMoon716,
                      size: DsfrComponentSize.sm,
                    ),
                  ],
                ),
                PageSubSection(
                  title: 'taille md',
                  children: [
                    DsfrBadge(label: 'badge info', type: DsfrBadgeType.information, size: DsfrComponentSize.md),
                    DsfrBadge(label: 'badge succès', type: DsfrBadgeType.success, size: DsfrComponentSize.md),
                    DsfrBadge(label: 'badge erreur', type: DsfrBadgeType.error, size: DsfrComponentSize.md),
                    DsfrBadge(label: 'badge avertissement', type: DsfrBadgeType.warning, size: DsfrComponentSize.md),
                    DsfrBadge(label: 'badge nouveau', type: DsfrBadgeType.news, size: DsfrComponentSize.md),
                    DsfrBadge(
                      label: 'badge personnalisé',
                      type: DsfrBadgeType.custom,
                      backgroundCustomColor: DsfrColors.greenArchipel100,
                      textCustomColor: DsfrColors.greenArchipelMoon716,
                      size: DsfrComponentSize.md,
                    ),
                  ],
                ),
              ],
            ),
            PageSection(
              title: 'Badge avec icônes',
              children: [
                PageSubSection(
                  title: 'Taille SM',
                  children: [
                    DsfrBadge(
                      label: 'badge info',
                      type: DsfrBadgeType.information,
                      withIcon: true,
                      size: DsfrComponentSize.sm,
                    ),
                    DsfrBadge(
                      label: 'badge succès',
                      type: DsfrBadgeType.success,
                      withIcon: true,
                      size: DsfrComponentSize.sm,
                    ),
                    DsfrBadge(
                      label: 'badge erreur',
                      type: DsfrBadgeType.error,
                      withIcon: true,
                      size: DsfrComponentSize.sm,
                    ),
                    DsfrBadge(
                      label: 'badge avertissement',
                      type: DsfrBadgeType.warning,
                      withIcon: true,
                      size: DsfrComponentSize.sm,
                    ),
                    DsfrBadge(
                      label: 'badge nouveau',
                      type: DsfrBadgeType.news,
                      withIcon: true,
                      size: DsfrComponentSize.sm,
                    ),
                  ],
                ),
                PageSubSection(
                  title: 'Taille MD',
                  children: [
                    DsfrBadge(
                      label: 'badge info',
                      type: DsfrBadgeType.information,
                      withIcon: true,
                      size: DsfrComponentSize.md,
                    ),
                    DsfrBadge(
                      label: 'badge succès',
                      type: DsfrBadgeType.success,
                      withIcon: true,
                      size: DsfrComponentSize.md,
                    ),
                    DsfrBadge(
                      label: 'badge erreur',
                      type: DsfrBadgeType.error,
                      withIcon: true,
                      size: DsfrComponentSize.md,
                    ),
                    DsfrBadge(
                      label: 'badge avertissement',
                      type: DsfrBadgeType.warning,
                      withIcon: true,
                      size: DsfrComponentSize.md,
                    ),
                    DsfrBadge(
                      label: 'badge nouveau',
                      type: DsfrBadgeType.news,
                      withIcon: true,
                      size: DsfrComponentSize.md,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
