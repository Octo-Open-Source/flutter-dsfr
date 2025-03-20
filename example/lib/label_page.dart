import 'package:example/mise_en_page/page_section.dart';
import 'package:example/mise_en_page/page_sub_section.dart';
import 'package:flutter_dsfr/composants/dsfr_label.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class LabelPage extends StatelessWidget {
  const LabelPage({super.key});

  static final model = PageItem(
    title: 'Badge',
    pageBuilder: (final context) => const LabelPage(),
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
                  DsfrLabel.sm(label: 'badge info', type: DsfrLabelType.information),
                  DsfrLabel.sm(label: 'badge succès', type: DsfrLabelType.success),
                  DsfrLabel.sm(label: 'badge erreur', type: DsfrLabelType.error),
                  DsfrLabel.sm(label: 'badge avertissement', type: DsfrLabelType.warning),
                  DsfrLabel.sm(label: 'badge nouveau', type: DsfrLabelType.novelties),
                  DsfrLabel.sm(
                    label: 'badge personnalisé',
                    type: DsfrLabelType.custom,
                    backgroundCustomColor: DsfrColors.greenArchipel100,
                    textCustomColor: DsfrColors.greenArchipelMoon716,
                  ),
                ]),
                PageSubSection(title: 'taille md', children: [
                  DsfrLabel.md(label: 'badge info', type: DsfrLabelType.information),
                  DsfrLabel.md(label: 'badge succès', type: DsfrLabelType.success),
                  DsfrLabel.md(label: 'badge erreur', type: DsfrLabelType.error),
                  DsfrLabel.md(label: 'badge avertissement', type: DsfrLabelType.warning),
                  DsfrLabel.md(label: 'badge nouveau', type: DsfrLabelType.novelties),
                  DsfrLabel.md(
                    label: 'badge personnalisé',
                    type: DsfrLabelType.custom,
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
                    DsfrLabel.sm(label: 'badge info', type: DsfrLabelType.information, withIcon: true),
                    DsfrLabel.sm(label: 'badge succès', type: DsfrLabelType.success, withIcon: true),
                    DsfrLabel.sm(label: 'badge erreur', type: DsfrLabelType.error, withIcon: true),
                    DsfrLabel.sm(label: 'badge avertissement', type: DsfrLabelType.warning, withIcon: true),
                    DsfrLabel.sm(label: 'badge nouveau', type: DsfrLabelType.novelties, withIcon: true),
                  ],
                ),
                PageSubSection(
                  title: 'Taille MD',
                  children: [
                    DsfrLabel.sm(label: 'badge info', type: DsfrLabelType.information, withIcon: true),
                    DsfrLabel.md(label: 'badge succès', type: DsfrLabelType.success, withIcon: true),
                    DsfrLabel.md(label: 'badge erreur', type: DsfrLabelType.error, withIcon: true),
                    DsfrLabel.md(label: 'badge avertissement', type: DsfrLabelType.warning, withIcon: true),
                    DsfrLabel.md(label: 'badge nouveau', type: DsfrLabelType.novelties, withIcon: true),
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
