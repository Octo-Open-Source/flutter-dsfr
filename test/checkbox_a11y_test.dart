import 'package:flutter_dsfr/composants/checkbox.dart';
import 'package:flutter_test/flutter_test.dart';
import 'scaffold_for_test.dart';

void main() {
  testWidgets(
    'accessibilité du composant checkbox MD en light mode',
    (WidgetTester tester) async {
      // Given
      final SemanticsHandle handle = tester.ensureSemantics();

      // When
      await tester.pumpWidget(
        ScaffoldForTest(
          isLightMode: true,
          child: DsfrCheckbox.md(label: 'label', value: true),
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

  testWidgets(
    'accessibilité du composant checkbox MD en dark mode',
        (WidgetTester tester) async {
      // Given
      final SemanticsHandle handle = tester.ensureSemantics();

      // When
      await tester.pumpWidget(
        ScaffoldForTest(
          isLightMode: false,
          child: DsfrCheckbox.md(label: 'label', value: true),
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
