import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:dsfr_lints/lints/prefer_using_color_decision/prefer_using_color_decision.dart';

PluginBase createPlugin() => _DsfrLinter();

class _DsfrLinter extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) {
    return [
      PreferUsingColorDecision(),
    ];
  }
}
