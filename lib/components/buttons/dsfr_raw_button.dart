import 'dart:async';

import 'package:flutter_dsfr/atoms/focus_widget.dart';
import 'package:flutter_dsfr/components/buttons/dsfr_button.dart';
import 'package:flutter_dsfr/components/buttons/dsfr_button_border.dart';
import 'package:flutter_dsfr/components/buttons/dsfr_button_background_color.dart';
import 'package:flutter_dsfr/components/buttons/dsfr_button_foreground_color.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_text_style.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_spacings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

class DsfrRawButton extends StatefulWidget {
  const DsfrRawButton({
    super.key,
    required this.variant,
    required this.size,
    this.foregroundColor,
    this.borderRadius,
    this.onPressed,
    required this.child,
  });

  final Widget child;
  final DsfrButtonVariant variant;
  final Color? foregroundColor;
  final DsfrComponentSize size;
  final BorderRadius? borderRadius;
  final VoidCallback? onPressed;

  @override
  State<DsfrRawButton> createState() => _DsfrRawButtonState();
}

class _DsfrRawButtonState extends State<DsfrRawButton> with MaterialStateMixin<DsfrRawButton> {
  late final double _minHeight;
  late final EdgeInsetsGeometry _padding;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _padding = _getPadding(widget.size);
    _minHeight = _getMinHeight(widget.size);
    setMaterialState(WidgetState.disabled, widget.onPressed == null);
  }

  EdgeInsetsGeometry _getPadding(final DsfrComponentSize size) => switch (size) {
        DsfrComponentSize.lg => const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        DsfrComponentSize.md => const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        DsfrComponentSize.sm => const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      };

  TextStyle _getTextStyle(final DsfrComponentSize size, final Color color) => switch (size) {
        DsfrComponentSize.lg => DsfrTextStyle.bodyLgMedium(color: color),
        DsfrComponentSize.md => DsfrTextStyle.bodyMdMedium(color: color),
        DsfrComponentSize.sm => DsfrTextStyle.bodySmMedium(color: color),
      };

  double _getMinHeight(final DsfrComponentSize size) => switch (size) {
        DsfrComponentSize.lg => DsfrSpacings.s6w,
        DsfrComponentSize.md => DsfrSpacings.s5w,
        DsfrComponentSize.sm => DsfrSpacings.s4w,
      };

  @override
  void didUpdateWidget(final DsfrRawButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    setMaterialState(WidgetState.disabled, widget.onPressed == null);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    super.dispose();
  }

  @override
  Widget build(final context) {
    final backgroundColor = DsfrButtonBackgroundColor.fromVariant(widget.variant, context);
    final foregroundColor = widget.foregroundColor == null
        ? DsfrButtonForegroundColor.fromVariant(widget.variant, context)
        : DsfrButtonForegroundColor(
            $default: widget.foregroundColor!,
            disabled: DsfrColorDecisions.textDisabledGrey(context),
          );
    final border = widget.foregroundColor == null
        ? DsfrButtonBorder.fromVariant(widget.variant, context)
        : DsfrButtonBorder(
            $default: Border.fromBorderSide(
              BorderSide(color: widget.foregroundColor!),
            ),
            disabled: Border.fromBorderSide(
              BorderSide(color: DsfrColorDecisions.borderDisabledGrey(context)),
            ),
          );

    final textColor = foregroundColor.resolve(materialStates);

    return DsfrFocusWidget(
      isFocused: isFocused,
      child: Semantics(
        enabled: widget.onPressed != null,
        button: true,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: _minHeight),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: backgroundColor.resolve(materialStates),
              border: border.resolve(materialStates),
              borderRadius: widget.borderRadius,
            ),
            child: Material(
              color: DsfrColorDecisions.backgroundTransparent(context),
              child: InkWell(
                onTap: widget.onPressed == null
                    ? null
                    : () {
                        if (_timer?.isActive ?? false) {
                          return;
                        }
                        widget.onPressed!();
                        _timer = Timer(const Duration(milliseconds: 500), () {});
                      },
                onHighlightChanged: updateMaterialState(WidgetState.pressed),
                onHover: updateMaterialState(WidgetState.hovered),
                focusColor: DsfrColorDecisions.backgroundTransparent(context),
                canRequestFocus: widget.onPressed != null,
                onFocusChange: updateMaterialState(WidgetState.focused),
                child: Padding(
                  padding: _padding,
                  child: Center(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: IconTheme(
                      data: IconThemeData(color: textColor),
                      child: DefaultTextStyle(
                        style: _getTextStyle(widget.size, textColor),
                        child: widget.child,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
