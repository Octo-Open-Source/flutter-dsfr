import 'package:flutter_dsfr/src/components/dsfr_highlight.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
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

  accessibilityTest(componentName: 'Mise en exergue SM', isLightMode: true, child: highlightSM);
  accessibilityTest(componentName: 'Mise en exergue SM', isLightMode: false, child: highlightSM);
  accessibilityTest(componentName: 'Mise en exergue MD', isLightMode: true, child: highlightMD);
  accessibilityTest(componentName: 'Mise en exergue MD', isLightMode: false, child: highlightMD);
  accessibilityTest(componentName: 'Mise en exergue LG', isLightMode: true, child: highlightLG);
  accessibilityTest(componentName: 'Mise en exergue LG', isLightMode: false, child: highlightLG);
}
