import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_highlight.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  final highlightSM = DsfrHighlight(
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis amet, iaculis sagittis. Adipiscing ultrices scelerisque id rhoncus, risus sem vulputate ullamcorper proin.',
    size: DsfrComponentSize.sm,
  );
  final highlightMD = DsfrHighlight(
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis amet, iaculis sagittis. Adipiscing ultrices scelerisque id rhoncus, risus sem vulputate ullamcorper proin.',
    size: DsfrComponentSize.md,
  );
  final highlightLG = DsfrHighlight(
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis amet, iaculis sagittis. Adipiscing ultrices scelerisque id rhoncus, risus sem vulputate ullamcorper proin.',
    size: DsfrComponentSize.lg,
  );

  accessibilityTest(componentName: 'Mise en exergue SM', themeMode: ThemeMode.light, child: highlightSM);
  accessibilityTest(componentName: 'Mise en exergue SM', themeMode: ThemeMode.dark, child: highlightSM);
  accessibilityTest(componentName: 'Mise en exergue MD', themeMode: ThemeMode.light, child: highlightMD);
  accessibilityTest(componentName: 'Mise en exergue MD', themeMode: ThemeMode.dark, child: highlightMD);
  accessibilityTest(componentName: 'Mise en exergue LG', themeMode: ThemeMode.light, child: highlightLG);
  accessibilityTest(componentName: 'Mise en exergue LG', themeMode: ThemeMode.dark, child: highlightLG);
}
