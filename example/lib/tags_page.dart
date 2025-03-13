import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

// ignore_for_file: avoid_print
class TagsPage extends StatefulWidget {
  const TagsPage({super.key});

  static final model = PageItem(
    title: 'Tags',
    pageBuilder: (final context) => const TagsPage(),
  );

  @override
  State<TagsPage> createState() => _TagsPageState();
}

class _TagsPageState extends State<TagsPage> {
  bool _isTagSelected = false;

  @override
  Widget build(final context) => SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text(
              'Taille SM',
            ),
            DsfrTag.sm(
              label: TextSpan(text: 'Tag par défaut'),
            ),
            DsfrTag.sm(
              label: TextSpan(text: 'Tag cliquable par défaut'),
              onTap: () => print('Tag cliquable par défaut'),
            ),
            DsfrTag.sm(
              label: TextSpan(text: 'Tag cliquable par défaut avec icone'),
              icon: DsfrIcons.systemArrowRightLine,
              onTap: () => print('Tag cliquable par défaut avec icone'),
            ),
            DsfrTag.sm(
              label: TextSpan(text: 'Tag cliquable personnalisable'),
              backgroundColor: DsfrColorDecisions.backgroundActionHighBlueFrance(context),
              highlightColor: DsfrColorDecisions.backgroundActionHighBlueFranceHover(context),
              textColor: DsfrColorDecisions.textInvertedBlueFrance(context),
              icon: DsfrIcons.systemArrowRightLine,
              onTap: () => print('Tag cliquable personnalisable'),
            ),
            DsfrTag.sm(
              label: TextSpan(text: 'Tag selectionnable'),
              backgroundColor: DsfrColorDecisions.backgroundActionHighBlueFrance(context),
              highlightColor: DsfrColorDecisions.backgroundActionHighBlueFranceHover(context),
              textColor: DsfrColorDecisions.textInvertedBlueFrance(context),
              isSelectable: true,
              isSelected: _isTagSelected,
              onSelectionChanged: (final isSelected) => setState(() => _isTagSelected = isSelected),
            ),
            Text(
              'Taille MD',
            ),
            DsfrTag.md(
              label: TextSpan(text: 'Tag par défaut'),
            ),
            DsfrTag.md(
              label: TextSpan(text: 'Tag cliquable par défaut'),
              onTap: () => print('Tag cliquable par défaut'),
            ),
            DsfrTag.md(
              label: TextSpan(text: 'Tag cliquable par défaut avec icone'),
              icon: DsfrIcons.systemArrowRightLine,
              onTap: () => print('Tag cliquable par défaut avec icone'),
            ),
            DsfrTag.md(
              label: TextSpan(text: 'Tag cliquable personnalisable'),
              backgroundColor: DsfrColorDecisions.backgroundActionHighBlueFrance(context),
              highlightColor: DsfrColorDecisions.backgroundActionHighBlueFranceHover(context),
              textColor: DsfrColorDecisions.textInvertedBlueFrance(context),
              icon: DsfrIcons.systemArrowRightLine,
              onTap: () => print('Tag cliquable personnalisable'),
            ),
            DsfrTag.md(
              label: TextSpan(text: 'Tag selectionnable'),
              backgroundColor: DsfrColorDecisions.backgroundActionHighBlueFrance(context),
              highlightColor: DsfrColorDecisions.backgroundActionHighBlueFranceHover(context),
              textColor: DsfrColorDecisions.textInvertedBlueFrance(context),
              isSelectable: true,
              isSelected: _isTagSelected,
              onSelectionChanged: (final isSelected) => setState(() => _isTagSelected = isSelected),
            ),
          ],
        ),
      );
}
