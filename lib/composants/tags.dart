import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter/material.dart';

class DsfrTag extends StatelessWidget {
  const DsfrTag({
    super.key,
    required this.label,
    this.backgroundColor,
    this.textColor,
    this.icon,
    this.onTap,
    this.focusNode,
  });

  final IconData? icon;
  final InlineSpan label;
  final GestureTapCallback? onTap;
  final Color? backgroundColor;
  final Color? textColor;
  final FocusNode? focusNode;

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
                    color: backgroundColor ?? DsfrColorDecisions.backgroundActionLowBlueFrance(context),
                    shape: const StadiumBorder(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          if (icon != null) ...[
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              baseline: TextBaseline.alphabetic,
                              child: Icon(icon,
                                  size: 12, color: textColor ?? DsfrColorDecisions.textActionHighBlueFrance(context)),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: DsfrSpacings.s1v),
                            ),
                          ],
                          label,
                        ],
                      ),
                      style: DsfrTextStyle.bodyXs(
                          color: textColor ?? DsfrColorDecisions.textActionHighBlueFrance(context)),
                    ),
                  ),
                ),
              ));
        }));
  }
}
