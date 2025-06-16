import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_tooltip.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget tooltipTop = DsfrTooltip(message: "message", semanticsLabel: "help", child: Icon(Icons.info_outline));
  Widget tooltipBottom = DsfrTooltip(
    message: "message",
    forceBottom: true,
    semanticsLabel: "help",
    child: Icon(Icons.info_outline),
  );

  accessibilityTest(componentName: 'Top tooltip', themeMode: ThemeMode.light, child: tooltipTop, skip: true);
  accessibilityTest(componentName: 'Bottom tooltip', themeMode: ThemeMode.light, child: tooltipBottom, skip: true);
}
