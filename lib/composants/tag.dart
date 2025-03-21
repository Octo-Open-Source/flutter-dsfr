import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

class DsfrTag extends StatefulWidget {
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
    this.isSelected = false,
    this.onSelectionChanged,
    this.enabled = true,
  }) : assert(onSelectionChanged == null || onTap == null);

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
    final bool enabled = true,
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
          isSelected: isSelected,
          onSelectionChanged: onSelectionChanged,
          enabled: enabled,
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
    final bool enabled = true,
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
          isSelected: isSelected,
          onSelectionChanged: onSelectionChanged,
          enabled: enabled,
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
  final bool isSelected;
  final ValueChanged<bool>? onSelectionChanged;
  final bool enabled;

  @override
  State<DsfrTag> createState() => _DsfrTagState();
}

class _DsfrTagState extends State<DsfrTag> {
  bool hasFocus = false;

  @override
  Widget build(final context) {
    final enabled = widget.enabled;
    final isSelected = widget.isSelected;
    final size = widget.size;
    final label = widget.label;
    final onTap = widget.onTap;
    final icon = widget.icon;
    final onSelectionChanged = widget.onSelectionChanged;
    final focusNode = widget.focusNode;

    return Semantics(
      enabled: enabled,
      selected: isSelected,
      child: DsfrFocusWidget(
        isFocused: hasFocus,
        child: CustomPaint(
          painter: _CustomShapePainter(size, _getBackgroundColor(context), isSelected),
          child: ClipPath(
            clipper: _CustomShapeClipper(size, isSelected),
            child: _TagButton(
              label: label,
              padding: _getPadding(),
              size: size,
              backgroundColor: _getBackgroundColor(context),
              highlightColor: _getHighlightColor(context),
              textStyle: _getTextStyle(context),
              icon: icon,
              iconFontSize: _getIconFontSize(),
              onTap: onTap,
              isSelected: isSelected,
              onSelectionChanged: onSelectionChanged,
              enabled: enabled,
              focusNode: focusNode,
              onFocusChange: (final hasFocus) => setState(() => this.hasFocus = hasFocus),
            ),
          ),
        ),
      ),
    );
  }

  Color _getTextColor(BuildContext context) {
    if (widget.enabled) {
      if (widget.isSelected) {
        return widget.selectedTextColor ?? DsfrColorDecisions.textInvertedBlueFrance(context);
      } else {
        return widget.textColor ?? DsfrColorDecisions.textActionHighBlueFrance(context);
      }
    } else {
      return DsfrColorDecisions.textDisabledGrey(context);
    }
  }

  DsfrTextStyle _getTextStyle(BuildContext context) {
    var textColor = _getTextColor(context);
    switch (widget.size) {
      case DsfrComponentSize.md:
        return DsfrTextStyle.bodyMd(color: textColor);
      case DsfrComponentSize.sm:
        return DsfrTextStyle.bodySm(color: textColor);
      default:
        throw UnimplementedError('Size ${widget.size} is not implemented');
    }
  }

  double _getIconFontSize() {
    switch (widget.size) {
      case DsfrComponentSize.md:
        return 16;
      case DsfrComponentSize.sm:
        return 12;
      default:
        throw UnimplementedError('Size ${widget.size} is not implemented');
    }
  }

  EdgeInsets _getPadding() {
    return switch (widget.size) {
      DsfrComponentSize.md => const EdgeInsets.fromLTRB(12, 4, 20, 4),
      DsfrComponentSize.sm => const EdgeInsets.fromLTRB(8, 2, 14, 2),
      _ => throw UnimplementedError('Size ${widget.size} is not implemented'),
    };
  }

  Color _getBackgroundColor(BuildContext context) {
    if (widget.enabled) {
      if (widget.isSelected) {
        return widget.selectedBackgroundColor ?? DsfrColorDecisions.backgroundActionHighBlueFrance(context);
      } else {
        return widget.backgroundColor ?? DsfrColorDecisions.backgroundActionLowBlueFrance(context);
      }
    } else {
      return DsfrColorDecisions.backgroundDisabledGrey(context);
    }
  }

  Color? _getHighlightColor(BuildContext context) {
    if (widget.enabled) {
      final hasNoCustomBackgroundColors = (widget.backgroundColor == null) && (widget.highlightColor == null);
      final hasNoCustomSelectedBackgroundColors =
          (widget.selectedBackgroundColor == null) && (widget.selectedHighlightColor == null);
      final shouldUseDefaultHighlightColor = (!widget.isSelected && hasNoCustomBackgroundColors) ||
          (widget.isSelected && hasNoCustomBackgroundColors && hasNoCustomSelectedBackgroundColors);

      if (shouldUseDefaultHighlightColor) {
        return widget.isSelected
            ? DsfrColorDecisions.backgroundActionHighBlueFranceHover(context)
            : DsfrColorDecisions.backgroundActionLowBlueFranceHover(context);
      } else {
        return widget.isSelected ? widget.selectedHighlightColor : widget.highlightColor;
      }
    } else {
      return DsfrColorDecisions.backgroundDisabledGrey(context);
    }
  }
}

class _TagButton extends StatelessWidget {
  const _TagButton({
    required this.label,
    required this.padding,
    required this.size,
    this.backgroundColor,
    this.highlightColor,
    required this.textStyle,
    this.icon,
    this.iconFontSize,
    this.onTap,
    this.isSelected = false,
    this.onSelectionChanged,
    this.enabled = true,
    this.focusNode,
    this.onFocusChange,
  });

  final InlineSpan label;
  final EdgeInsets padding;
  final DsfrComponentSize size;
  final GestureTapCallback? onTap;
  final IconData? icon;
  final double? iconFontSize;
  final Color? backgroundColor;
  final Color? highlightColor;
  final DsfrTextStyle textStyle;
  final bool isSelected;
  final ValueChanged<bool>? onSelectionChanged;
  final bool enabled;
  final FocusNode? focusNode;
  final ValueChanged<bool>? onFocusChange;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      shape: isSelected ? null : const StadiumBorder(),
      child: InkWell(
        onFocusChange: onFocusChange,
        focusNode: focusNode,
        highlightColor: highlightColor,
        splashFactory: enabled ? null : NoSplash.splashFactory,
        onTap: enabled
            ? () {
                if (onSelectionChanged != null) {
                  onSelectionChanged!(!isSelected);
                } else {
                  onTap?.call();
                }
              }
            : null,
        child: Padding(
          padding: padding,
          child: Text.rich(
            TextSpan(
              children: [
                if (icon != null)
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    baseline: TextBaseline.alphabetic,
                    child: Padding(
                      padding: EdgeInsets.only(right: DsfrSpacings.s1v),
                      child: Icon(
                        icon,
                        size: iconFontSize,
                        color: textStyle.color,
                      ),
                    ),
                  ),
                label,
              ],
            ),
            style: textStyle,
          ),
        ),
      ),
    );
  }
}

const double _tagCornerRadius = 40;
const double _tagRadiusSizeS = 4.5;
const double _tagRadiusSizeM = 6;
const double _tagStrokeWidthSizeS = 1.2;
const double _tagStrokeWidthSizeM = 1.5;
const double _spaceBetweenButtonAndTag = 1;

class _CustomShapeClipper extends CustomClipper<Path> {
  const _CustomShapeClipper(
    this.componentSize,
    this.selected,
  );

  final DsfrComponentSize componentSize;
  final bool selected;

  @override
  Path getClip(Size size) {
    final Path path = Path();
    final double tagRadius = (componentSize == DsfrComponentSize.md) ? _tagRadiusSizeM : _tagRadiusSizeS;
    final double tagStrokeWidth = (componentSize == DsfrComponentSize.md) ? _tagStrokeWidthSizeM : _tagStrokeWidthSizeS;

    final cutoutRadius = tagRadius + tagStrokeWidth + _spaceBetweenButtonAndTag;
    final Offset cutoutCenter = Offset(size.width - cutoutRadius, cutoutRadius / 2);

    path.addRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width - cutoutRadius, size.height),
        Radius.circular(_tagCornerRadius),
      ),
    );
    if (!selected) {
      return path;
    }
    final Path cutoutPath = Path()..addOval(Rect.fromCircle(center: cutoutCenter, radius: cutoutRadius));
    return Path.combine(PathOperation.difference, path, cutoutPath);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    if (oldClipper is _CustomShapeClipper) {
      return oldClipper.componentSize != componentSize || oldClipper.selected != selected;
    }
    return true;
  }
}

class _CustomShapePainter extends CustomPainter {
  const _CustomShapePainter(
    this.componentSize,
    this.backgroundColor,
    this.selected,
  );

  final DsfrComponentSize componentSize;
  final Color backgroundColor;
  final bool selected;

  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path();
    final double tagRadius = (componentSize == DsfrComponentSize.md) ? _tagRadiusSizeM : _tagRadiusSizeS;
    final double tagStrokeWidth = (componentSize == DsfrComponentSize.md) ? _tagStrokeWidthSizeM : _tagStrokeWidthSizeS;
    final Paint tagPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    final Paint tagCheckIconPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = tagStrokeWidth
      ..style = PaintingStyle.stroke;

    final cutoutRadius = tagRadius + tagStrokeWidth + _spaceBetweenButtonAndTag;
    final Offset cutoutCenter = Offset(size.width - cutoutRadius, cutoutRadius / 3);

    path.addRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width - cutoutRadius, size.height),
        Radius.circular(_tagCornerRadius),
      ),
    );

    if (!selected) {
      return canvas.drawPath(path, tagPaint);
    }

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
    if (oldDelegate is _CustomShapePainter) {
      return oldDelegate.componentSize != componentSize || oldDelegate.selected != selected;
    }
    return true;
  }
}
