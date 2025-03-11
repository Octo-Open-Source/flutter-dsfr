import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

class DsfrTag extends StatelessWidget {
  const DsfrTag._({
    super.key,
    required this.label,
    required this.padding,
    required this.size,
    this.backgroundColor,
    this.highlightColor,
    this.textColor,
    this.icon,
    this.onTap,
    this.focusNode,
    this.isSelectable = false,
  });

  const DsfrTag.sm({
    required final InlineSpan label,
    final IconData? icon,
    final GestureTapCallback? onTap,
    final Color? backgroundColor,
    final Color? highlightColor,
    final Color? textColor,
    final Key? key,
    final bool isSelectable = false,
  }) : this._(
          key: key,
          label: label,
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          size: DsfrComponentSize.sm,
          backgroundColor: backgroundColor,
          highlightColor: highlightColor,
          textColor: textColor,
          icon: icon,
          onTap: onTap,
          isSelectable: isSelectable,
        );

  const DsfrTag.md({
    required final InlineSpan label,
    final IconData? icon,
    final GestureTapCallback? onTap,
    final Color? backgroundColor,
    final Color? highlightColor,
    final Color? textColor,
    final Key? key,
    final bool isSelectable = false,
  }) : this._(
          key: key,
          label: label,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          size: DsfrComponentSize.md,
          backgroundColor: backgroundColor,
          highlightColor: highlightColor,
          textColor: textColor,
          icon: icon,
          onTap: onTap,
          isSelectable: isSelectable,
        );

  final InlineSpan label;
  final EdgeInsets padding;
  final DsfrComponentSize size;
  final GestureTapCallback? onTap;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? highlightColor;
  final Color? textColor;
  final FocusNode? focusNode;
  final bool isSelectable;

  DsfrTextStyle _getTextStyle(BuildContext context) {
    var textColor = this.textColor ?? DsfrColorDecisions.textActionHighBlueFrance(context);

    switch (size) {
      case DsfrComponentSize.md:
        return DsfrTextStyle.bodyMd(color: textColor);
      case DsfrComponentSize.sm:
        return DsfrTextStyle.bodySm(color: textColor);
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  double _getIconFontSize() {
    switch (size) {
      case DsfrComponentSize.md:
        return 16;
      case DsfrComponentSize.sm:
        return 12;
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case DsfrComponentSize.md:
        if (isSelectable) {
          return const EdgeInsets.fromLTRB(12, 4, 18, 4);
        } else {
          return const EdgeInsets.symmetric(vertical: 4, horizontal: 12);
        }
      case DsfrComponentSize.sm:
        if (isSelectable) {
          return const EdgeInsets.fromLTRB(8, 2, 14, 2);
        } else {
          return const EdgeInsets.symmetric(vertical: 2, horizontal: 8);
        }
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  @override
  Widget build(final context) {
    final highlightColor = (this.backgroundColor == null && this.highlightColor == null)
        ? DsfrColorDecisions.backgroundActionLowBlueFranceHover(context)
        : this.highlightColor;

    final backgroundColor = this.backgroundColor ?? DsfrColorDecisions.backgroundActionLowBlueFrance(context);

    final textColor = this.textColor ?? DsfrColorDecisions.textActionHighBlueFrance(context);

    return Focus(
      focusNode: focusNode,
      canRequestFocus: true,
      child: Builder(
        builder: (final context) {
          final isFocused = Focus.of(context).hasFocus;
          return DsfrFocusWidget(
            isFocused: isFocused,
            child: isSelectable
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CustomPaint(
                        painter: CustomShapePainter(
                            size, DsfrColorDecisions.backgroundActionHighBlueFrance(context), highlightColor),
                        child: Padding(
                          padding: _getPadding(),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                if (icon != null) ...[
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    baseline: TextBaseline.alphabetic,
                                    child: Icon(
                                      icon,
                                      size: _getIconFontSize(),
                                      color: textColor,
                                    ),
                                  ),
                                  const WidgetSpan(
                                    child: SizedBox(width: DsfrSpacings.s1v),
                                  ),
                                ],
                                label,
                              ],
                            ),
                            style: _getTextStyle(context),
                          ),
                        ),
                      ),
                    ],
                  )
                : Material(
                    color: backgroundColor,
                    shape: const StadiumBorder(),
                    child: ExcludeFocus(
                      child: InkWell(
                        onTap: onTap,
                        customBorder: StadiumBorder(),
                        highlightColor: highlightColor,
                        child: Padding(
                          padding: _getPadding(),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                if (icon != null) ...[
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    baseline: TextBaseline.alphabetic,
                                    child: Icon(
                                      icon,
                                      size: _getIconFontSize(),
                                      color: textColor,
                                    ),
                                  ),
                                  const WidgetSpan(
                                    child: SizedBox(width: DsfrSpacings.s1v),
                                  ),
                                ],
                                label,
                              ],
                            ),
                            style: _getTextStyle(context),
                          ),
                        ),
                      ),
                    ),
                  ),
          );
        },
      ),
    );
  }
}

class CustomShapePainter extends CustomPainter {
  const CustomShapePainter(
    this.componentSize,
    this.backgroundColor,
    this.highlightColor,
  );

  final DsfrComponentSize componentSize;
  final Color backgroundColor;
  final Color? highlightColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path();
    final double buttonCornerRadius = 40;
    final double tagRadius = (componentSize == DsfrComponentSize.md) ? 6 : 4.5;
    final double tagStrokeWidth = (componentSize == DsfrComponentSize.md) ? 1.5 : 1.2;
    final double spaceBetweenButtonAndTag = 1;
    final Paint tagPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    final Paint tagCheckIconPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = tagStrokeWidth
      ..style = PaintingStyle.stroke;

    final cutoutRadius = tagRadius + tagStrokeWidth + spaceBetweenButtonAndTag;
    final Offset cutoutCenter = Offset(size.width - cutoutRadius, cutoutRadius / 3);

    path.addRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width - cutoutRadius, size.height),
        Radius.circular(buttonCornerRadius),
      ),
    );

    final Path cutoutPath = Path()..addOval(Rect.fromCircle(center: cutoutCenter, radius: cutoutRadius));
    final Path finalPath = Path.combine(PathOperation.difference, path, cutoutPath);

    canvas.drawPath(finalPath, tagPaint);
    canvas.drawCircle(cutoutCenter, tagRadius, tagCheckIconPaint);

    final Path tickPath = Path();
    final center = cutoutCenter;
    final radius = tagRadius;

    // Calculate tick points based on the circle's size
    // Starting point (left point of the tick)
    Offset startPoint = Offset(center.dx - radius * 0.65, center.dy);

    // Middle point (bottom point of the tick)
    Offset middlePoint = Offset(center.dx - radius * 0.1, center.dy + radius * 0.4);

    // End point (right point of the tick, higher up)
    Offset endPoint = Offset(center.dx + radius * 0.6, center.dy - radius * 0.35);

    // Create the tick path
    tickPath.moveTo(startPoint.dx, startPoint.dy);
    tickPath.lineTo(middlePoint.dx, middlePoint.dy);
    tickPath.lineTo(endPoint.dx, endPoint.dy);

    // Draw the tick
    canvas.drawPath(tickPath, tagCheckIconPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate is! CustomShapePainter;
  }
}
