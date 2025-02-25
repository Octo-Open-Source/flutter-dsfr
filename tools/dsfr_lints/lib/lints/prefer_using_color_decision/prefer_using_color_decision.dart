import 'package:analyzer/error/error.dart' as error;
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class PreferUsingColorDecision extends DartLintRule {
  const PreferUsingColorDecision()
      : super(
          code: const LintCode(
            name: 'prefer_using_color_decision',
            problemMessage: 'You should use a color decision instead of a color. See `DsfrColorDecisions` class.',
            errorSeverity: error.ErrorSeverity.WARNING,
          ),
        );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addPrefixedIdentifier((node) {
      final prefix = node.prefix.name;

      if (prefix == 'Colors' || prefix == 'DsfrColors') {
        reporter.atNode(node, code);
      }
    });

    context.registry.addConstructorName((node) {
      var staticElement = node.staticElement;
      if (staticElement != null) {
        var className = staticElement.enclosingElement3.name;
        var classDisplayName = staticElement.enclosingElement3.displayName;
        if (className == 'Color' || classDisplayName == 'Color') {
          reporter.atNode(node, code);
        }
      }
    });
  }
}
