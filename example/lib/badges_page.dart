import 'package:example/mise_en_page/page_section.dart';
import 'package:example/mise_en_page/page_sub_section.dart';
import 'package:flutter_dsfr/composants/dsfr_badge.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class BadgesPage extends StatelessWidget {
  const BadgesPage({super.key});

  static final model = PageItem(
    title: 'Badges',
    pageBuilder: (final context) => const BadgesPage(),
  );

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
                PageSubSection(title: 'taille sm', children: [
                  DsfrBadge.sm(label: 'badge info', type: DsfrBadgeType.information),
                  DsfrBadge.sm(label: 'badge succès', type: DsfrBadgeType.success),
                  DsfrBadge.sm(label: 'badge erreur', type: DsfrBadgeType.error),
                  DsfrBadge.sm(label: 'badge avertissement', type: DsfrBadgeType.warning),
                  DsfrBadge.sm(label: 'badge nouveau', type: DsfrBadgeType.news),
                  DsfrBadge.sm(
                    label: 'badge personnalisé',
                    type: DsfrBadgeType.custom,
                    backgroundCustomColor: DsfrColors.greenArchipel100,
                    textCustomColor: DsfrColors.greenArchipelMoon716,
                  ),
                ]),
                PageSubSection(title: 'taille md', children: [
                  DsfrBadge.md(label: 'badge info', type: DsfrBadgeType.information),
                  DsfrBadge.md(label: 'badge succès', type: DsfrBadgeType.success),
                  DsfrBadge.md(label: 'badge erreur', type: DsfrBadgeType.error),
                  DsfrBadge.md(label: 'badge avertissement', type: DsfrBadgeType.warning),
                  DsfrBadge.md(label: 'badge nouveau', type: DsfrBadgeType.news),
                  DsfrBadge.md(
                    label: 'badge personnalisé',
                    type: DsfrBadgeType.custom,
                    backgroundCustomColor: DsfrColors.greenArchipel100,
                    textCustomColor: DsfrColors.greenArchipelMoon716,
                  ),
                ])
              ],
            ),
            PageSection(
              title: 'Badge avec icônes',
              children: [
                PageSubSection(
                  title: 'Taille SM',
                  children: [
                    DsfrBadge.sm(label: 'badge info', type: DsfrBadgeType.information, withIcon: true),
                    DsfrBadge.sm(label: 'badge succès', type: DsfrBadgeType.success, withIcon: true),
                    DsfrBadge.sm(label: 'badge erreur', type: DsfrBadgeType.error, withIcon: true),
                    DsfrBadge.sm(label: 'badge avertissement', type: DsfrBadgeType.warning, withIcon: true),
                    DsfrBadge.sm(label: 'badge nouveau', type: DsfrBadgeType.news, withIcon: true),
                  ],
                ),
                PageSubSection(
                  title: 'Taille MD',
                  children: [
                    DsfrBadge.sm(label: 'badge info', type: DsfrBadgeType.information, withIcon: true),
                    DsfrBadge.md(label: 'badge succès', type: DsfrBadgeType.success, withIcon: true),
                    DsfrBadge.md(label: 'badge erreur', type: DsfrBadgeType.error, withIcon: true),
                    DsfrBadge.md(label: 'badge avertissement', type: DsfrBadgeType.warning, withIcon: true),
                    DsfrBadge.md(label: 'badge nouveau', type: DsfrBadgeType.news, withIcon: true),
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
