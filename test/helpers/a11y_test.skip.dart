import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'scaffold_for_test.skip.dart';

void accessibilityTest({
  required String componentName,
  required ThemeMode themeMode,
  required Widget child,
  skip = false,
}) {
  testWidgets("A11y test: Composant $componentName en mode ${themeMode == ThemeMode.light ? 'clair' : 'sombre'}", (
    WidgetTester tester,
  ) async {
    // Given
    final SemanticsHandle handle = tester.ensureSemantics();

    // When
    await tester.pumpWidget(ScaffoldForTest(themeMode: themeMode, child: child));

    // Then
    await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
    await expectLater(tester, meetsGuideline(iOSTapTargetGuideline));
    await expectLater(tester, meetsGuideline(textContrastGuideline));
    handle.dispose();
  }, skip: skip);
}
