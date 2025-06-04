import 'package:flutter/material.dart';

class DsfrThemeModeProvider extends InheritedWidget {
  final bool isLightMode;

  const DsfrThemeModeProvider._({super.key, required this.isLightMode, required super.child});

  factory DsfrThemeModeProvider.withBuilder({Key? key, required bool isLightMode, required WidgetBuilder builder}) {
    return DsfrThemeModeProvider._(
      key: key,
      isLightMode: isLightMode,
      child: Builder(builder: builder),
    );
  }

  static DsfrThemeModeProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DsfrThemeModeProvider>();
  }

  @override
  bool updateShouldNotify(DsfrThemeModeProvider oldWidget) {
    return oldWidget.isLightMode != isLightMode;
  }
}
