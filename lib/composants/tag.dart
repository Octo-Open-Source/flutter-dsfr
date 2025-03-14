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
    this.selectedBackgroundColor,
    this.selectedHighlightColor,
    this.selectedTextColor,
    this.icon,
    this.onTap,
    this.focusNode,
    this.isSelectable = false,
    this.isSelected = false,
    this.onSelectionChanged,
  });

  const DsfrTag.sm({
    required final InlineSpan label,
    final IconData? icon,
    final GestureTapCallback? onTap,
    final Color? backgroundColor,
    final Color? highlightColor,
    final Color? textColor,
    final Color? selectedBackgroundColor,
    final Color? selectedHighlightColor,
    final Color? selectedTextColor,
    final Key? key,
    final bool isSelectable = false,
    final bool isSelected = false,
    final ValueChanged<bool>? onSelectionChanged,
  }) : this._(
          key: key,
          label: label,
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          size: DsfrComponentSize.sm,
          backgroundColor: backgroundColor,
          highlightColor: highlightColor,
          textColor: textColor,
          selectedBackgroundColor: selectedBackgroundColor,
          selectedHighlightColor: selectedHighlightColor,
          selectedTextColor: selectedTextColor,
          icon: icon,
          onTap: onTap,
          isSelectable: isSelectable,
          isSelected: isSelected,
          onSelectionChanged: onSelectionChanged,
        );

  const DsfrTag.md({
    required final InlineSpan label,
    final IconData? icon,
    final GestureTapCallback? onTap,
    final Color? backgroundColor,
    final Color? highlightColor,
    final Color? textColor,
    final Color? selectedBackgroundColor,
    final Color? selectedHighlightColor,
    final Color? selectedTextColor,
    final Key? key,
    final bool isSelectable = false,
    final bool isSelected = false,
    final ValueChanged<bool>? onSelectionChanged,
  }) : this._(
          key: key,
          label: label,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          size: DsfrComponentSize.md,
          backgroundColor: backgroundColor,
          highlightColor: highlightColor,
          textColor: textColor,
          selectedBackgroundColor: selectedBackgroundColor,
          selectedHighlightColor: selectedHighlightColor,
          selectedTextColor: selectedTextColor,
          icon: icon,
          onTap: onTap,
          isSelectable: isSelectable,
          isSelected: isSelected,
          onSelectionChanged: onSelectionChanged,
        );

  final InlineSpan label;
  final EdgeInsets padding;
  final DsfrComponentSize size;
  final GestureTapCallback? onTap;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? highlightColor;
  final Color? textColor;
  final Color? selectedBackgroundColor;
  final Color? selectedHighlightColor;
  final Color? selectedTextColor;
  final FocusNode? focusNode;
  final bool isSelectable;
  final bool isSelected;
  final ValueChanged<bool>? onSelectionChanged;

  DsfrTextStyle _getTextStyle(BuildContext context) {
    var textColor = (isSelected ? (selectedTextColor ?? this.textColor) : this.textColor) ??
        DsfrColorDecisions.textActionHighBlueFrance(context);

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
        if (isSelected) {
          return const EdgeInsets.fromLTRB(12, 4, 20, 4);
        } else {
          return const EdgeInsets.symmetric(vertical: 4, horizontal: 12);
        }
      case DsfrComponentSize.sm:
        if (isSelected) {
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
    final highlightColor = ((!isSelected && this.backgroundColor == null && this.highlightColor == null) ||
            (isSelected &&
                this.backgroundColor == null &&
                this.highlightColor == null &&
                selectedBackgroundColor == null &&
                selectedHighlightColor == null))
        ? DsfrColorDecisions.backgroundActionLowBlueFranceHover(context)
        : isSelected
            ? (selectedHighlightColor ?? this.highlightColor)
            : this.highlightColor;

    final backgroundColor = (isSelected ? selectedBackgroundColor : this.backgroundColor) ?? DsfrColorDecisions.backgroundActionLowBlueFrance(context);

    final textColor = (isSelected ? selectedTextColor : this.textColor) ?? DsfrColorDecisions.textActionHighBlueFrance(context);

    return Focus(
      focusNode: focusNode,
      canRequestFocus: true,
      child: Builder(
        builder: (final context) {
          final isFocused = Focus.of(context).hasFocus;
          return DsfrFocusWidget(
            isFocused: isFocused,
            child: isSelected
                ? CustomPaint(
                    painter: _CustomShapePainter(size, backgroundColor),
                    child: ClipPath(
                      clipper: _CustomShapeClipper(size),
                      child: _TagButton(
                        label: label,
                        padding: _getPadding(),
                        size: size,
                        backgroundColor: backgroundColor,
                        highlightColor: highlightColor,
                        textColor: textColor,
                        textStyle: _getTextStyle(context),
                        icon: icon,
                        iconFontSize: _getIconFontSize(),
                        onTap: onTap,
                        isSelectable: isSelectable,
                        isSelected: isSelected,
                        onSelectionChanged: onSelectionChanged,
                      ),
                    ),
                  )
                : _TagButton(
                    label: label,
                    padding: _getPadding(),
                    size: size,
                    backgroundColor: backgroundColor,
                    highlightColor: highlightColor,
                    textColor: textColor,
                    textStyle: _getTextStyle(context),
                    icon: icon,
                    iconFontSize: _getIconFontSize(),
                    onTap: onTap,
                    isSelectable: isSelectable,
                    isSelected: isSelected,
                    onSelectionChanged: onSelectionChanged,
                  ),
          );
        },
      ),
    );
  }
}

class _TagButton extends StatelessWidget {
  const _TagButton({
    required this.label,
    required this.padding,
    required this.size,
    this.backgroundColor,
    this.highlightColor,
    this.textColor,
    required this.textStyle,
    this.icon,
    this.iconFontSize,
    this.onTap,
    this.isSelectable = false,
    this.isSelected = false,
    this.onSelectionChanged,
  });

  final InlineSpan label;
  final EdgeInsets padding;
  final DsfrComponentSize size;
  final GestureTapCallback? onTap;
  final IconData? icon;
  final double? iconFontSize;
  final Color? backgroundColor;
  final Color? highlightColor;
  final Color? textColor;
  final DsfrTextStyle textStyle;
  final bool isSelectable;
  final bool isSelected;
  final ValueChanged<bool>? onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      shape: isSelected ? null : const StadiumBorder(),
      child: ExcludeFocus(
        child: InkWell(
          customBorder: isSelected ? null : const StadiumBorder(),
          highlightColor: highlightColor,
          onTap: () {
            if (isSelectable) {
              onSelectionChanged?.call(!isSelected);
            } else {
              onTap;
            }
          },
          child: Padding(
              padding: padding,
              child: Text.rich(
                TextSpan(
                  children: [
                    if (icon != null) ...[
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        baseline: TextBaseline.alphabetic,
                        child: Icon(
                          icon,
                          size: iconFontSize,
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
                style: textStyle,
              )),
        ),
      ),
    );
  }
}

const double tagCornerRadius = 40;
const double tagRadiusSizeS = 4.5;
const double tagRadiusSizeM = 6;
const double tagStrokeWidthSizeS = 1.2;
const double tagStrokeWidthSizeM = 1.5;
const double spaceBetweenButtonAndTag = 1;

class _CustomShapeClipper extends CustomClipper<Path> {
  const _CustomShapeClipper(
    this.componentSize,
  );

  final DsfrComponentSize componentSize;

  @override
  Path getClip(Size size) {
    final Path path = Path();
    final double tagRadius = (componentSize == DsfrComponentSize.md) ? tagRadiusSizeM : tagRadiusSizeS;
    final double tagStrokeWidth = (componentSize == DsfrComponentSize.md) ? tagStrokeWidthSizeM : tagStrokeWidthSizeS;

    final cutoutRadius = tagRadius + tagStrokeWidth + spaceBetweenButtonAndTag;
    final Offset cutoutCenter = Offset(size.width - cutoutRadius, cutoutRadius / 2);

    path.addRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width - cutoutRadius, size.height),
        Radius.circular(tagCornerRadius),
      ),
    );
    final Path cutoutPath = Path()..addOval(Rect.fromCircle(center: cutoutCenter, radius: cutoutRadius));
    return Path.combine(PathOperation.difference, path, cutoutPath);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _CustomShapePainter extends CustomPainter {
  const _CustomShapePainter(
    this.componentSize,
    this.backgroundColor,
  );

  final DsfrComponentSize componentSize;
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path();
    final double tagRadius = (componentSize == DsfrComponentSize.md) ? tagRadiusSizeM : tagRadiusSizeS;
    final double tagStrokeWidth = (componentSize == DsfrComponentSize.md) ? tagStrokeWidthSizeM : tagStrokeWidthSizeS;
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
        Radius.circular(tagCornerRadius),
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
    return oldDelegate is! _CustomShapePainter;
  }
}
