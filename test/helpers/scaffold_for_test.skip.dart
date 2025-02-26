import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/helpers/theme_mode_provider.dart';

class ScaffoldForTest extends StatelessWidget {
  final Widget child;
  final bool isLightMode;

  const ScaffoldForTest({super.key, required this.child, required this.isLightMode});

  @override
  Widget build(BuildContext context) {
    return ThemeModeProvider.withBuilder(
      isLightMode: isLightMode,
      builder: (context) {
        return MaterialApp(
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: DsfrColorDecisions.backgroundDefaultGrey(context),
          ),
          darkTheme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: DsfrColorDecisions.backgroundDefaultGrey(context),
          ),
          themeMode: isLightMode ? ThemeMode.light : ThemeMode.dark,
          home: Scaffold(body: child),
        );
      },
    );
  }
}
