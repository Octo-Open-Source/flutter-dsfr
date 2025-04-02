import 'package:flutter_dsfr/components/dsfr_highlight.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  final highlightSM = DsfrHighlight.sm(
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis amet, iaculis sagittis. Adipiscing ultrices scelerisque id rhoncus, risus sem vulputate ullamcorper proin.',
  );
  final highlightMD = DsfrHighlight.md(
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis amet, iaculis sagittis. Adipiscing ultrices scelerisque id rhoncus, risus sem vulputate ullamcorper proin.',
  );
  final highlightLG = DsfrHighlight.lg(
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis amet, iaculis sagittis. Adipiscing ultrices scelerisque id rhoncus, risus sem vulputate ullamcorper proin.',
  );

  accessibilityTest(componentName: 'Mise en exergue SM', isLightMode: true, child: highlightSM);
  accessibilityTest(componentName: 'Mise en exergue SM', isLightMode: false, child: highlightSM);
  accessibilityTest(componentName: 'Mise en exergue MD', isLightMode: true, child: highlightMD);
  accessibilityTest(componentName: 'Mise en exergue MD', isLightMode: false, child: highlightMD);
  accessibilityTest(componentName: 'Mise en exergue LG', isLightMode: true, child: highlightLG);
  accessibilityTest(componentName: 'Mise en exergue LG', isLightMode: false, child: highlightLG);
}
