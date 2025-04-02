import 'package:example/mise_en_page/page_sub_section.dart';
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
  bool _isTag5Selected = false;
  bool _isTag6Selected = false;
  bool _showDeletableTagSm = true;
  bool _showDeletableTagMd = true;

  final List _groupTagSupprimable = ['Tag 1', 'Tag 2', 'Tag 3', 'Tag 4', 'Tag 5', 'Tag 6'];

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
              isSelected: _isTag4Selected,
              onSelectionChanged: (final isSelected) => setState(() => _isTag4Selected = isSelected),
            ),
            if (_showDeletableTagMd)
              DsfrTag.md(
                label: TextSpan(text: 'Tag supprimable'),
                onDelete: () => setState(() => _showDeletableTagMd = false),
              ),
            PageSubSection(title: 'Groupe de tags cliquables', children: [
              DsfrGroup<DsfrTag>(
                direction: Direction.horizontal,
                children: [
                  DsfrTag.sm(
                    label: TextSpan(text: 'Tag 1'),
                    onTap: () => print('Tag 1 cliquable par défaut'),
                  ),
                  DsfrTag.sm(
                    label: TextSpan(text: 'Tag 2'),
                    onTap: () => print('Tag 2 cliquable par défaut'),
                  ),
                  DsfrTag.sm(
                    label: TextSpan(text: 'Tag 3'),
                    onTap: () => print('Tag 3 cliquable par défaut'),
                  ),
                  DsfrTag.sm(
                    label: TextSpan(text: 'Tag 4'),
                    onTap: () => print('Tag 4 cliquable par défaut'),
                  ),
                  DsfrTag.sm(
                    label: TextSpan(text: 'Tag 5'),
                    onTap: () => print('Tag 5 cliquable par défaut'),
                  ),
                  DsfrTag.sm(
                    label: TextSpan(text: 'Tag 6'),
                    onTap: () => print('Tag 6 cliquable par défaut'),
                  ),
                  DsfrTag.sm(
                    label: TextSpan(text: 'Tag 7'),
                    onTap: () => print('Tag 7 cliquable par défaut'),
                  ),
                  DsfrTag.sm(
                    label: TextSpan(text: 'Tag avec icone'),
                    icon: DsfrIcons.systemArrowRightLine,
                    onTap: () => print('Tag cliquable par défaut avec icone'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              DsfrGroup<DsfrTag>(
                direction: Direction.horizontal,
                children: [
                  DsfrTag.md(
                    label: TextSpan(text: 'Tag 1'),
                    onTap: () => print('Tag 1 cliquable par défaut'),
                  ),
                  DsfrTag.md(
                    label: TextSpan(text: 'Tag 2'),
                    onTap: () => print('Tag 2 cliquable par défaut'),
                  ),
                  DsfrTag.md(
                    label: TextSpan(text: 'Tag 3'),
                    onTap: () => print('Tag 3 cliquable par défaut'),
                  ),
                  DsfrTag.md(
                    label: TextSpan(text: 'Tag 4'),
                    onTap: () => print('Tag 4 cliquable par défaut'),
                  ),
                  DsfrTag.md(
                    label: TextSpan(text: 'Tag 5'),
                    onTap: () => print('Tag 5 cliquable par défaut'),
                  ),
                  DsfrTag.md(
                    label: TextSpan(text: 'Tag 6'),
                    onTap: () => print('Tag 6 cliquable par défaut'),
                  ),
                  DsfrTag.md(
                    label: TextSpan(text: 'Tag 7'),
                    onTap: () => print('Tag 7 cliquable par défaut'),
                  ),
                  DsfrTag.md(
                    label: TextSpan(text: 'Tag avec icone'),
                    icon: DsfrIcons.systemArrowRightLine,
                    onTap: () => print('Tag cliquable par défaut avec icone'),
                  ),
                ],
              ),
            ]),
            PageSubSection(
              title: 'Groupe de tags selectionnables',
              children: [
                DsfrGroup<DsfrTag>(
                  direction: Direction.horizontal,
                  children: [
                    DsfrTag.sm(
                      label: TextSpan(text: 'Tag 1'),
                      isSelected: _isTag1Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag1Selected = isSelected),
                    ),
                    DsfrTag.sm(
                      label: TextSpan(text: 'Tag 2'),
                      isSelected: _isTag2Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag2Selected = isSelected),
                    ),
                    DsfrTag.sm(
                      label: TextSpan(text: 'Tag 3'),
                      isSelected: _isTag3Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag3Selected = isSelected),
                    ),
                    DsfrTag.sm(
                      label: TextSpan(text: 'Tag 4'),
                      isSelected: _isTag4Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag4Selected = isSelected),
                    ),
                    DsfrTag.sm(
                      label: TextSpan(text: 'Tag 5'),
                      isSelected: _isTag5Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag5Selected = isSelected),
                    ),
                    DsfrTag.sm(
                      label: TextSpan(text: 'Tag 6'),
                      isSelected: _isTag6Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag6Selected = isSelected),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                DsfrGroup<DsfrTag>(
                  direction: Direction.horizontal,
                  children: [
                    DsfrTag.md(
                      label: TextSpan(text: 'Tag 1'),
                      isSelected: _isTag1Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag1Selected = isSelected),
                    ),
                    DsfrTag.md(
                      label: TextSpan(text: 'Tag 2'),
                      isSelected: _isTag2Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag2Selected = isSelected),
                    ),
                    DsfrTag.md(
                      label: TextSpan(text: 'Tag 3'),
                      isSelected: _isTag3Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag3Selected = isSelected),
                    ),
                    DsfrTag.md(
                      label: TextSpan(text: 'Tag 4'),
                      isSelected: _isTag4Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag4Selected = isSelected),
                    ),
                    DsfrTag.md(
                      label: TextSpan(text: 'Tag 5'),
                      isSelected: _isTag5Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag5Selected = isSelected),
                    ),
                    DsfrTag.md(
                      label: TextSpan(text: 'Tag 6'),
                      isSelected: _isTag6Selected,
                      onSelectionChanged: (final isSelected) => setState(() => _isTag6Selected = isSelected),
                    ),
                  ],
                ),
              ],
            ),
            PageSubSection(
              title: 'Groupe de tags supprimables',
              children: [
                DsfrGroup<DsfrTag>(
                  direction: Direction.horizontal,
                  children: [
                    if (_groupTagSupprimable.isNotEmpty)
                      for (var tag in _groupTagSupprimable)
                        DsfrTag.sm(
                          label: TextSpan(text: tag),
                          onDelete: () => setState(() => _groupTagSupprimable.remove(tag)),
                        ),
                  ],
                ),
                SizedBox(height: 20),
                DsfrGroup<DsfrTag>(
                  direction: Direction.horizontal,
                  children: [
                    if (_groupTagSupprimable.isNotEmpty)
                      for (var tag in _groupTagSupprimable)
                        DsfrTag.md(
                          label: TextSpan(text: tag),
                          onDelete: () => setState(() => _groupTagSupprimable.remove(tag)),
                        ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 200),
          ],
        ),
      );
}
