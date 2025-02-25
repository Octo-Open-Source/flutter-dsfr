import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meta/meta.dart';

import 'scaffold_for_test.dart';

@isTest
void accessibilityTest({required String componentName, required bool isLightMode, required Widget child}) {
  testWidgets(
    "A11y test: Composant $componentName en mode ${isLightMode ? 'clair' : 'sombre'}",
    (WidgetTester tester) async {
      // Given
      final SemanticsHandle handle = tester.ensureSemantics();

      // When
      await tester.pumpWidget(
        ScaffoldForTest(
          isLightMode: isLightMode,
          child: child,
        ),
      );

      // Then
      await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
      await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
      await expectLater(tester, meetsGuideline(iOSTapTargetGuideline));
      await expectLater(tester, meetsGuideline(textContrastGuideline));
      handle.dispose();
    },
  );
}
