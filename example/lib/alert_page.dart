import 'package:example/mise_en_page/page_sub_section.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  static final model = PageItem(
    title: 'Alerte',
    pageBuilder: (final context) => const AlertPage(),
  );

  @override
  Widget build(final context) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          PageSubSection(title: 'Alerte avec titre et description', children: [
            DsfrAlert(type: DsfrAlertType.info, title: 'Titre', description: DsfrAlertDescriptionText('description')),
            DsfrAlert(
                type: DsfrAlertType.success, title: 'Titre', description: DsfrAlertDescriptionText('description')),
            DsfrAlert(
                type: DsfrAlertType.warning, title: 'Titre', description: DsfrAlertDescriptionText('description')),
            DsfrAlert(type: DsfrAlertType.error, title: 'Titre', description: DsfrAlertDescriptionText('description')),
          ]),
          PageSubSection(title: 'Alerte avec description seule', children: [
            DsfrAlert(type: DsfrAlertType.info, description: DsfrAlertDescriptionText('description')),
            DsfrAlert(type: DsfrAlertType.success, description: DsfrAlertDescriptionText('description')),
            DsfrAlert(type: DsfrAlertType.warning, description: DsfrAlertDescriptionText('description')),
            DsfrAlert(type: DsfrAlertType.error, description: DsfrAlertDescriptionText('description')),
          ]),
          DsfrAlertWithClose(),
          PageSubSection(title: 'Variantes : titre seul et description longue', children: [
            DsfrAlert(type: DsfrAlertType.info, title: 'Titre'),
            DsfrAlert(
              type: DsfrAlertType.success,
              title: 'Titre',
              description: DsfrAlertDescriptionText(
                'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
              ),
            ),
            DsfrAlert(
              type: DsfrAlertType.success,
              title: 'Titre',
              description: DsfrAlertDescriptionText(
                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',),
              onClose: () {},
            ),
          ]),
          PageSubSection(title: 'Description avec widget', children: [
            DsfrAlert(
              type: DsfrAlertType.info,
              title: 'Titre',
              description: DsfrAlertDescriptionWidget(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description'),
                    DsfrLink(
                      label: 'linklabel',
                      onTap: () {},
                      size: DsfrComponentSize.md,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ],
      );
}

class DsfrAlertWithClose extends StatefulWidget {
  const DsfrAlertWithClose({super.key});

  @override
  State<DsfrAlertWithClose> createState() => _DsfrAlertWithCloseState();
}

class _DsfrAlertWithCloseState extends State<DsfrAlertWithClose> {
  bool isInfoVisible = true;
  bool isSuccessVisible = true;

  @override
  Widget build(final context) {
    return PageSubSection(title: 'Alerte avec icône de fermeture', children: [
      if (isInfoVisible)
        DsfrAlert(
          type: DsfrAlertType.info,
          title: 'Titre',
          description: DsfrAlertDescriptionText('description'),
          onClose: () => setState(() {
            isInfoVisible = false;
          }),
        ),
      if (isSuccessVisible)
        DsfrAlert(
          type: DsfrAlertType.success,
          title: 'Titre',
          description: DsfrAlertDescriptionText('description'),
          onClose: () => setState(() {
            isSuccessVisible = false;
          }),
        ),
    ]);
  }
}
