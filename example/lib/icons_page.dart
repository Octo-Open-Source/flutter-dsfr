// ignore_for_file: avoid-collection-mutating-methods

import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class IconsPage extends StatelessWidget {
  const IconsPage({super.key});

  static final model = PageItem(title: 'Icône', pageBuilder: (final context) => const IconsPage());

  @override
  Widget build(final context) {
    const allIcons = DsfrIcons.all;
    final allIconsKeys = allIcons.keys.toList()..sort();

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10),
      itemBuilder: (final context, final index) {
        final allIconsKey = allIconsKeys.elementAtOrNull(index);

        return allIconsKey == null
            ? const SizedBox()
            : Tooltip(
                message: allIconsKey,
                child: Icon(allIcons[allIconsKey], size: 32, color: DsfrColors.blueFranceSun113),
              );
      },
      itemCount: allIcons.length,
    );
  }
}
