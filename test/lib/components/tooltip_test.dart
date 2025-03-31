import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/tooltip.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget tooltipTop = DsfrTooltip(
    message: "message",
    semanticsLabel: "help",
    child: Icon(Icons.info_outline),
  );
  Widget tooltipBottom = DsfrTooltip(
    message: "message",
    forceBottom: true,
    semanticsLabel: "help",
    child: Icon(Icons.info_outline),
  );

  accessibilityTest(componentName: 'Top tooltip', isLightMode: true, child: tooltipTop, skip: true);
  accessibilityTest(componentName: 'Bottom tooltip', isLightMode: true, child: tooltipBottom, skip: true);
}
