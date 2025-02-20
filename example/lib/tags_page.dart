import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class TagsPage extends StatelessWidget {
  const TagsPage({super.key});

  static final model = PageItem(
    title: 'Tags',
    pageBuilder: (final context) => const TagsPage(),
  );

  @override
  Widget build(final context) => SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            DsfrTag(
              label: TextSpan(text: 'small tag'),
            ),
            DsfrTag(
              label: TextSpan(text: 'small tag'),
              icon: DsfrIcons.financeMoneyEuroCircleLine,
            ),
            DsfrTag(
              label: TextSpan(text: 'tag custom'),
              backgroundColor: DsfrColors.greenMenthe925,
              textColor: DsfrColors.greenMentheSun373,
              icon: DsfrIcons.financeMoneyEuroCircleLine,
            ),
          ],
        ),
      );
}
