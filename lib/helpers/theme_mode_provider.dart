import 'package:flutter/material.dart';

class ThemeModeProvider extends InheritedWidget {
  final bool isLightMode;

  const ThemeModeProvider._({
    super.key,
    required this.isLightMode,
    required super.child,
  });

  factory ThemeModeProvider.withBuilder({
    Key? key,
    required bool isLightMode,
    required WidgetBuilder builder,
  }) {
    return ThemeModeProvider._(
      key: key,
      isLightMode: isLightMode,
      child: Builder(
        builder: builder,
      ),
    );
  }

  static ThemeModeProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeModeProvider>();
  }

  @override
  bool updateShouldNotify(ThemeModeProvider oldWidget) {
    return oldWidget.isLightMode != isLightMode;
  }
}
