import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_theme.dart';

class ScaffoldForTest extends StatelessWidget {
  final Widget child;
  final ThemeMode themeMode;

  const ScaffoldForTest({super.key, required this.child, required this.themeMode});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DsfrThemeData.light(),
      darkTheme: DsfrThemeData.dark(),
      themeMode: themeMode,
      home: Scaffold(body: child),
    );
  }
}
