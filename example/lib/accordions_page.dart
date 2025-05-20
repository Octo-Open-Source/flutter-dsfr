import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class AccordionsPage extends StatelessWidget {
  const AccordionsPage({super.key});

  static final model = PageItem(
    title: 'Accordéon',
    pageBuilder: (final context) => const AccordionsPage(),
  );

  @override
  Widget build(final context) => ListView(
        padding: const EdgeInsets.all(16),
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
                        style: DsfrTextStyle.headline1(
                          color: DsfrColorDecisions.textActiveBlueFrance(context),
                        ),
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing, link test incididunt, ut labore et dolore magna aliqua. Vitae sapien pellentesque habitant morbi tristique senectus et. Diam maecenas sed enim ut. Accumsan lacus vel facilisis volutpat est. Ut aliquam purus sit amet luctus. Lorem ipsum dolor sit amet consectetur adipiscing elit ut.Lorem ipsum dolor sit amet, consectetur adipiscing, link test incididunt, ut labore et dolore magna aliqua. Vitae sapien pellentesque habitant morbi tristique senectus et. Diam maecenas sed enim ut. Accumsan lacus vel facilisis volutpat est. Ut aliquam purus sit amet luctus. Lorem ipsum dolor sit amet consectetur adipiscing elit ut.',
                      style: DsfrTextStyle.bodyMd(
                        color: DsfrColorDecisions.textDefaultGrey(context),
                      ),
                    ),
                  ],
                ),
              ),
              DsfrAccordion(
                headerLabel: 'Header 2',
                body: const Text('Body 2'),
              ),
            ],
          ),
        ],
      );
}
