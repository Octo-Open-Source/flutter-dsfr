import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

import 'mise_en_page/page_sub_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final model = PageItem(title: 'Accueil', pageBuilder: (final context) => const HomePage());

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Accueil', style: DsfrTextStyle.headline2(color: DsfrColorDecisions.textTitleBlueFrance(context))),
        const SizedBox(height: 16),
        const Text(
          'Ce système de design est une implémentation du Design System de l’État français (DSFR) en Flutter. Il permet de créer des applications accessibles respectant les standards graphiques et fonctionnels du gouvernement français.',
          style: DsfrTextStyle.bodyMd(color: DsfrColors.beigeGrisGalet75),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 16),
        const Divider(),
        PageSubSection(
          title: "Accordéon",
          children: [
            DsfrAccordionsGroup(
              values: [
                DsfrAccordion(
                  headerLabel: 'Header 1',
                  headerExpandedLabel: 'Header 1 Expanded',
                  body: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Contenu',
                          style: DsfrTextStyle.headline1(color: DsfrColorDecisions.textActiveBlueFrance(context)),
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing, link test incididunt, ut labore et dolore magna aliqua. Vitae sapien pellentesque habitant morbi tristique senectus et. Diam maecenas sed enim ut. Accumsan lacus vel facilisis volutpat est. Ut aliquam purus sit amet luctus. Lorem ipsum dolor sit amet consectetur adipiscing elit ut.Lorem ipsum dolor sit amet, consectetur adipiscing, link test incididunt, ut labore et dolore magna aliqua. Vitae sapien pellentesque habitant morbi tristique senectus et. Diam maecenas sed enim ut. Accumsan lacus vel facilisis volutpat est. Ut aliquam purus sit amet luctus. Lorem ipsum dolor sit amet consectetur adipiscing elit ut.',
                        style: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDefaultGrey(context)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        PageSubSection(
          title: 'Alerte',
          children: [
            DsfrAlert(type: DsfrAlertType.info, title: 'Titre', description: DsfrAlertDescriptionText('description')),
          ],
        ),
        PageSubSection(
          title: 'Bouton',
          children: [
            DsfrButton(
              label: "Bouton",
              variant: DsfrButtonVariant.primary,
              size: DsfrComponentSize.md,
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Divider(),
        DsfrButton(
          label: 'Voir plus ...',
          variant: DsfrButtonVariant.tertiaryWithoutBorder,
          size: DsfrComponentSize.lg,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ],
    );
  }
}
