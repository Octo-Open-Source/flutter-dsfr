import 'package:flutter_dsfr/atoms/focus_widget.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';

class DsfrToggleSwitch extends StatefulWidget {
  const DsfrToggleSwitch({
    super.key,
    required this.label,
    required this.value,
    this.enabled = true,
    this.onChanged,
  });

  final String label;
  final bool value;
  final bool enabled;
  final ValueChanged<bool>? onChanged;

  @override
  State<DsfrToggleSwitch> createState() => _DsfrToggleSwitchState();
}

class _DsfrToggleSwitchState extends State<DsfrToggleSwitch> with MaterialStateMixin<DsfrToggleSwitch> {
  @override
  Widget build(final context) {
    final textColor = widget.enabled
        ? DsfrColorDecisions.textLabelGrey(context) //
        : DsfrColorDecisions.textDisabledGrey(context);
    return Semantics(
      toggled: widget.value,
      child: InkWell(
        onTap: widget.enabled && widget.onChanged != null ? () => widget.onChanged!(!widget.value) : null,
        onHighlightChanged: updateMaterialState(WidgetState.pressed),
        onHover: updateMaterialState(WidgetState.hovered),
        focusColor: DsfrColorDecisions.backgroundTransparent(context),
        highlightColor: DsfrColorDecisions.backgroundTransparent(context),
        splashFactory: NoSplash.splashFactory,
        excludeFromSemantics: true,
        onFocusChange: updateMaterialState(WidgetState.focused),
        child: Row(
          spacing: DsfrSpacings.s2w,
          children: [
            DsfrFocusWidget(
              isFocused: isFocused,
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              child: _Switch(value: widget.value, enabled: widget.enabled),
            ),
            Flexible(
              child: Text(
                widget.label,
                style: DsfrTextStyle.bodyMd(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Switch extends StatelessWidget {
  const _Switch({
    required this.value,
    required this.enabled,
  });

  final bool value;
  final bool enabled;

  @override
  Widget build(final context) {
    const width = 40.0;
    const height = 24.0;
    const offset = width - height;

    final borderColor = enabled
        ? DsfrColorDecisions.borderActionHighBlueFrance(context) //
        : DsfrColorDecisions.borderDisabledGrey(context);
    final backgroundColor = switch ((value, enabled)) {
      (false, true) => DsfrColorDecisions.backgroundDefaultGrey(context),
      (true, true) => DsfrColorDecisions.backgroundActiveBlueFrance(context),
      (false, false) => DsfrColorDecisions.backgroundDefaultGrey(context),
      (true, false) => DsfrColorDecisions.backgroundDisabledGrey(context),
    };
    final circleBackgroundColor = DsfrColorDecisions.backgroundDefaultGrey(context);
    final iconColor = enabled
        ? DsfrColorDecisions.textActiveBlueFrance(context) //
        : DsfrColorDecisions.textDisabledGrey(context);

    final border = Border.fromBorderSide(BorderSide(color: borderColor));
    const borderRadius = BorderRadius.all(Radius.circular(height));

    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: backgroundColor,
              border: border,
              borderRadius: borderRadius,
            ),
          ),
          Positioned(
            left: value ? offset : 0,
            top: 0,
            right: value ? 0 : offset,
            bottom: 0,
            child: value
                ? DecoratedBox(
                    decoration: BoxDecoration(
                      color: circleBackgroundColor,
                      border: border,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      DsfrIcons.systemCheckLine,
                      size: 16,
                      color: iconColor,
                    ),
                  )
                : DecoratedBox(
                    decoration: BoxDecoration(
                      border: border,
                      borderRadius: borderRadius,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
