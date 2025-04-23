import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

class HighlightPage extends StatelessWidget {
  const HighlightPage({super.key});

  static final model = PageItem(
    title: 'Mise en exergue',
    pageBuilder: (final context) => const HighlightPage(),
  );

  @override
  Widget build(final context) => SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16,
            children: [
              DsfrHighlight(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis amet, iaculis sagittis. Adipiscing ultrices scelerisque id rhoncus, risus sem vulputate ullamcorper proin.',
                size: DsfrComponentSize.sm,
              ),
              DsfrHighlight(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis amet, iaculis sagittis. Adipiscing ultrices scelerisque id rhoncus, risus sem vulputate ullamcorper proin.',
                size: DsfrComponentSize.md,
              ),
              DsfrHighlight(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis amet, iaculis sagittis. Adipiscing ultrices scelerisque id rhoncus, risus sem vulputate ullamcorper proin.',
                size: DsfrComponentSize.lg,
              ),
            ],
          ),
        ),
      );
}
