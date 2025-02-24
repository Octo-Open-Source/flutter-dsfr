import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class PreferUsingColorDecision extends DartLintRule {
  const PreferUsingColorDecision() : super(code: _code);

  static const _code = LintCode(
    name: 'prefer_using_color_decision',
    problemMessage: 'You should use a color decision instead of a color. See `DsfrColorDecisions` class.',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    // Our lint will highlight all variable declarations with our custom warning.
    context.registry.addVariableDeclaration((node) {
      // "node" exposes metadata about the variable declaration. We could
      // check "node" to show the lint only in some conditions.

      // This line tells custom_lint to render a warning at the location of "node".
      // And the warning shown will use our `code` variable defined above as description.
      reporter.atNode(node, code);
    });
  }
}
