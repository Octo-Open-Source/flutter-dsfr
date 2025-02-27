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
    this.textColor,
    this.icon,
    this.onTap,
    this.focusNode,
  });

  const DsfrTag.sm({
    required final InlineSpan label,
    final IconData? icon,
    final GestureTapCallback? onTap,
    final Color? backgroundColor,
    final Color? textColor,
    final Key? key,
  }) : this._(
          key: key,
          label: label,
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          size: DsfrComponentSize.sm,
          backgroundColor: backgroundColor,
          textColor: textColor,
          icon: icon,
          onTap: onTap,
        );

  const DsfrTag.md({
    required final InlineSpan label,
    final IconData? icon,
    final GestureTapCallback? onTap,
    final Color? backgroundColor,
    final Color? textColor,
    final Key? key,
  }) : this._(
          key: key,
          label: label,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          size: DsfrComponentSize.md,
          backgroundColor: backgroundColor,
          textColor: textColor,
          icon: icon,
          onTap: onTap,
        );

  final InlineSpan label;
  final EdgeInsets padding;
  final DsfrComponentSize size;
  final GestureTapCallback? onTap;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final FocusNode? focusNode;

  DsfrTextStyle _getTextStyle(BuildContext context) {
    var textColor =
        this.textColor ?? DsfrColorDecisions.textActionHighBlueFrance(context);

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
        return const EdgeInsets.symmetric(vertical: 4, horizontal: 12);
      case DsfrComponentSize.sm:
        return const EdgeInsets.symmetric(vertical: 2, horizontal: 8);
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  @override
  Widget build(final context) {
    return Focus(
        focusNode: focusNode,
        canRequestFocus: true,
        child: Builder(builder: (final context) {
          final isFocused = Focus.of(context).hasFocus;
          return DsfrFocusWidget(
              isFocused: isFocused,
              child: GestureDetector(
                onTap: onTap,
                behavior: HitTestBehavior.opaque,
                child: DecoratedBox(
                  decoration: ShapeDecoration(
                    color: backgroundColor ??
                        DsfrColorDecisions.backgroundActionLowBlueFrance(
                            context),
                    shape: const StadiumBorder(),
                  ),
                  child: Padding(
                    padding: _getPadding(),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          if (icon != null) ...[
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              baseline: TextBaseline.alphabetic,
                              child: Icon(icon,
                                  size: _getIconFontSize(),
                                  color: textColor ??
                                      DsfrColorDecisions
                                          .textActionHighBlueFrance(context)),
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
              ));
        }));
  }
}
