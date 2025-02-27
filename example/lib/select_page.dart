import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/select.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({super.key});

  static final model = PageItem(
    title: 'Liste déroulante',
    pageBuilder: (final context) => const SelectPage(),
  );

  @override
  Widget build(final context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            DsfrSelect(
              label: 'Liste déroulante',
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: 1, label: 'Un'),
                DropdownMenuEntry(value: 2, label: 'Deux'),
                DropdownMenuEntry(value: 3, label: 'Trois'),
              ],
              onSelected: (final value) {},
            ),
            DsfrSelect(
              label: 'Liste déroulante désactivée',
              dropdownMenuEntries: const [],
              onSelected: (final value) {},
            ),
            DsfrSelect(
              label: 'Liste déroulante erreur',
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: 1, label: 'Un'),
                DropdownMenuEntry(value: 2, label: 'Deux'),
                DropdownMenuEntry(value: 3, label: 'Trois'),
              ],
              onSelected: (final value) {},
              composantState: const ComposantState(
                state: ComposantStateEnum.error,
                text: 'Texte d\'erreur obligatoire',
              ),
            ),
            DsfrSelect(
              label: 'Liste déroulante valide',
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: 1, label: 'Un'),
                DropdownMenuEntry(value: 2, label: 'Deux'),
                DropdownMenuEntry(value: 3, label: 'Trois'),
              ],
              onSelected: (final value) {},
              composantState: const ComposantState(
                state: ComposantStateEnum.success,
                text: 'Texte de validation optionnel',
              ),
            ),
          ],
        ),
      );
}
