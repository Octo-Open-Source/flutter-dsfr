import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});

  static final model = PageItem(
    title: 'NOTICE ?',
    pageBuilder: (final context) => const NoticePage(),
  );

  @override
  Widget build(final context) => ListView(
        children: [
          DsfrNotice(
            titre: 'Titre du bandeau',
            description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
            onClose: () {},
          )
        ],
      );
}
