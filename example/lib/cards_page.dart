import 'package:example/mise_en_page/page_section.dart';
import 'package:example/mise_en_page/page_sub_section.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  static final model = PageItem(
    title: 'Cartes',
    pageBuilder: (final context) => const CardsPage(),
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
              title: 'Cartes sans média',
              children: [
                PageSubSection(title: 'Taille SM', children: [
                  DsfrCard(
                    title: "Une carte",
                    description: _loremIpsum,
                    size: DsfrComponentSize.sm,
                  ),
                ]),
                PageSubSection(title: 'Taille MD', children: [
                  DsfrCard(
                    title: "Une carte",
                    description: _loremIpsum,
                    size: DsfrComponentSize.md,
                  ),
                ]),
                PageSubSection(title: 'Taille LG', children: [
                  DsfrCard(
                    title: "Une carte",
                    description: _loremIpsum,
                    size: DsfrComponentSize.lg,
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

String _loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut nulla quam. Etiam elementum scelerisque dolor, vel gravida nulla accumsan sit amet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec sed justo interdum, viverra purus sit amet, hendrerit nibh.";
