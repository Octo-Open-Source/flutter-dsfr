// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

/// Must trigger a lint warning
class MustTriggerLint {
  void examples() {
    // expect_lint: prefer_using_color_decision
    final colorConstructor = Color(0xFF000000);
    // expect_lint: prefer_using_color_decision
    final colorConstant = Colors.black;
    // expect_lint: prefer_using_color_decision
    final dsfrColor = DsfrColors.grey100;
    // expect_lint: prefer_using_color_decision
    final widget = Text("Hello", style: TextStyle(color: Colors.black));
  }
}

/// Must not trigger a lint warning
class MustNotTriggerLint {
  void examples() {
    final colorFromMethod = color();
    useColor(colorFromMethod);
    final colorDecision = DsfrColorDecisions.textDefaultGrey(context());
  }

  Color color() {
    throw UnimplementedError();
  }

  void useColor(Color color) {
    throw UnimplementedError();
  }
}

BuildContext context() {
  throw UnimplementedError();
}
