import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions_extension.dart';

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
  bool _isTag1Selected = true;
  bool _isTag2Selected = true;
  bool _isTag3Selected = true;
  bool _isTag4Selected = true;
  bool _showDeletableTagSm = true;
  bool _showDeletableTagMd = true;

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
              label: TextSpan(text: 'Tag désactivé'),
              icon: DsfrIcons.systemArrowRightLine,
              enabled: false,
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
              isSelectable: true,
              isSelected: _isTag1Selected,
              onSelectionChanged: (final isSelected) => setState(() => _isTag1Selected = isSelected),
            ),
            DsfrTag.sm(
              label: TextSpan(text: 'Tag selectionnable personnalisable'),
              backgroundColor: DsfrColorDecisionsExtension.backgroundPurpleGlycineHigh(context),
              highlightColor: DsfrColorDecisionsExtension.backgroundPurpleGlycineHighHover(context),
              textColor: DsfrColorDecisionsExtension.backgroundPurpleGlycineLow(context),
              selectedBackgroundColor: DsfrColorDecisionsExtension.backgroundPurpleGlycineLow(context),
              selectedHighlightColor: DsfrColorDecisionsExtension.backgroundPurpleGlycineLowHover(context),
              selectedTextColor: DsfrColorDecisions.textInvertedBlueFrance(context),
              isSelectable: true,
              isSelected: _isTag2Selected,
              onSelectionChanged: (final isSelected) => setState(() => _isTag2Selected = isSelected),
            ),
            if (_showDeletableTagSm)
              DsfrTag.sm(
                label: TextSpan(text: 'Tag supprimable'),
                onDelete: () => setState(() => _showDeletableTagSm = false),
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
              label: TextSpan(text: 'Tag désactivé'),
              icon: DsfrIcons.systemArrowRightLine,
              enabled: false,
            ),
            DsfrTag.md(
              label: TextSpan(text: 'Tag selectionnable'),
              isSelectable: true,
              isSelected: _isTag3Selected,
              onSelectionChanged: (final isSelected) => setState(() => _isTag3Selected = isSelected),
            ),
            DsfrTag.md(
              label: TextSpan(text: 'Tag selectionnable personnalisable'),
              backgroundColor: DsfrColorDecisionsExtension.backgroundPurpleGlycineHigh(context),
              highlightColor: DsfrColorDecisionsExtension.backgroundPurpleGlycineHighHover(context),
              textColor: DsfrColorDecisionsExtension.backgroundPurpleGlycineLow(context),
              selectedBackgroundColor: DsfrColorDecisionsExtension.backgroundPurpleGlycineLow(context),
              selectedHighlightColor: DsfrColorDecisionsExtension.backgroundPurpleGlycineLowHover(context),
              selectedTextColor: DsfrColorDecisions.textInvertedBlueFrance(context),
              isSelectable: true,
              isSelected: _isTag4Selected,
              onSelectionChanged: (final isSelected) => setState(() => _isTag4Selected = isSelected),
            ),
            if (_showDeletableTagMd)
              DsfrTag.md(
                label: TextSpan(text: 'Tag supprimable'),
                onDelete: () => setState(() => _showDeletableTagMd = false),
              ),
          ],
        ),
      );
}
