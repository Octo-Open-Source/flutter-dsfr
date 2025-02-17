import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter/material.dart';

class RadioIcon<T> extends StatelessWidget {
  const RadioIcon({
    super.key,
    required this.value,
    required this.groupValue,
    this.enabled = true,
    this.hasError = false,
  });

  final T value;
  final T? groupValue;
  final bool enabled;
  final bool hasError;

  @override
  Widget build(final context) => Semantics(
        checked: groupValue == value,
        selected: groupValue == value,
        inMutuallyExclusiveGroup: true,
        child: FittedBox(
          child: CustomPaint(
            painter: _RadioIconPainter(
              isSelected: groupValue == value,
              strokeColor: getStrokeColor(context),
              fillColor: getFillColor(context),
            ),
            size: const Size(24, 24),
          ),
        ),
      );

  Color getFillColor(BuildContext context) {
    if (!enabled) {
      return DsfrColorDecisions.backgroundDisabledGrey(context);
    } else {
      return DsfrColorDecisions.borderActiveBlueFrance(context);
    }
  }

  Color getStrokeColor(BuildContext context) {
    if (!enabled) {
      return DsfrColorDecisions.borderDisabledGrey(context);
    } else if (hasError) {
      return DsfrColorDecisions.borderPlainError(context);
    } else {
      return getFillColor(context);
    }
  }
}

class _RadioIconPainter extends CustomPainter {
  final bool isSelected;
  final Color strokeColor;
  final Color fillColor;
  static const outerRadius = 11.0;
  static const innerRadius = 6.0;

  const _RadioIconPainter({required this.isSelected, required this.strokeColor, required this.fillColor});

  @override
  void paint(final Canvas canvas, final Size size) {
    final center = size.center(Offset.zero);
    final outerPaint = Paint()
      ..color = strokeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    canvas.drawCircle(center, outerRadius, outerPaint);

    if (isSelected) {
      final innerPaint = Paint()
        ..color = fillColor
        ..style = PaintingStyle.fill
        ..strokeWidth = 1;

      canvas.drawCircle(center, innerRadius, innerPaint);
    }
  }

  @override
  bool shouldRepaint(final _RadioIconPainter oldDelegate) => isSelected != oldDelegate.isSelected;
}
