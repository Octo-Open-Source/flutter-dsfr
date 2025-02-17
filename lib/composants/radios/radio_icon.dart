import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter/material.dart';

class RadioIcon<T> extends StatelessWidget {
  const RadioIcon({
    super.key,
    required this.value,
    required this.groupValue,
  });

  final T value;
  final T? groupValue;

  @override
  Widget build(final context) => Semantics(
        checked: groupValue == value,
        selected: groupValue == value,
        inMutuallyExclusiveGroup: true,
        child: FittedBox(
          child: CustomPaint(
            painter: _RadioIconPainter(isSelected: groupValue == value, color:DsfrColorDecisions.borderActiveBlueFrance(context)),
            size: const Size(24, 24),
          ),
        ),
      );
}

class _RadioIconPainter extends CustomPainter {
  final bool isSelected;
  final Color color;
  static const outerRadius = 11.0;
  static const innerRadius = 6.0;

  const _RadioIconPainter({required this.isSelected, required this.color});

  @override
  void paint(final Canvas canvas, final Size size) {
    final center = size.center(Offset.zero);
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    canvas.drawCircle(center, outerRadius, paint);

    if (isSelected) {
      paint.style = PaintingStyle.fill;
      canvas.drawCircle(center, innerRadius, paint);
    }
  }

  @override
  bool shouldRepaint(final _RadioIconPainter oldDelegate) =>
      isSelected != oldDelegate.isSelected;
}
