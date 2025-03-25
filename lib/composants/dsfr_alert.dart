import 'package:flutter/widgets.dart';

enum DsfrAlertType {
  info,
  warning,
  error,
  success,
}

class DsfrAlert extends StatelessWidget {
  final DsfrAlertType type;

  const DsfrAlert({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Text(type.name);
  }
}
