import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});

  static final model = PageItem(title: 'Bandeaux d\'information', pageBuilder: (final context) => const NoticePage());

  @override
  Widget build(final context) => SingleChildScrollView(
    child: Column(
      spacing: 12,
      children: [
        Text('Bandeaux génériques'),
        DsfrNotice(
          titre: 'Titre du bandeau',
          description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
          onClose: () {},
        ),
        DsfrNotice(
          titre: 'Titre du bandeau',
          description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
          type: DsfrNoticeType.genericWarning,
          onClose: () {},
        ),
        DsfrNotice(
          titre: 'Titre du bandeau',
          description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
          type: DsfrNoticeType.genericAlert,
          onClose: () {},
        ),
        Text('Bandeaux vigilance météo'),
        DsfrNotice(
          titre: 'Titre du bandeau',
          description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
          type: DsfrNoticeType.weatherOrange,
          onClose: () {},
        ),
        DsfrNotice(
          titre: 'Titre du bandeau',
          description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
          type: DsfrNoticeType.weatherRed,
          onClose: () {},
        ),
        DsfrNotice(
          titre: 'Titre du bandeau',
          description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
          type: DsfrNoticeType.weatherPurple,
          onClose: () {},
        ),
        Text('Bandeaux d\'alerte'),
        DsfrNotice(
          titre: 'Titre du bandeau',
          description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
          type: DsfrNoticeType.alertAttack,
          onClose: () {},
        ),
        DsfrNotice(
          titre: 'Titre du bandeau',
          description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
          type: DsfrNoticeType.alertCallForWitnesses,
          onClose: () {},
        ),
        DsfrNotice(
          titre: 'Titre du bandeau',
          description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
          type: DsfrNoticeType.alertTechnology,
          onClose: () {},
        ),
      ],
    ),
  );
}
