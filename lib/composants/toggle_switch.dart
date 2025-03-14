import 'package:flutter_dsfr/atoms/focus_widget.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

enum DsfrToggleLabelLocation {
  left,
  right,
}

class DsfrToggleSwitch extends StatefulWidget {
  const DsfrToggleSwitch({
    super.key,
    required this.label,
    required this.value,
    this.labelLocation = DsfrToggleLabelLocation.right,
    this.enabled = true,
    this.onChanged,
    this.description,
    this.status,
    this.composantState = DsfrComposantStateEnum.none,
  });

  final String label;
  final bool value;
  final bool enabled;
  final DsfrToggleLabelLocation labelLocation;
  final DsfrComposantStateEnum composantState;
  final ValueChanged<bool>? onChanged;
  final String? description;
  final String? status;

  @override
  State<DsfrToggleSwitch> createState() => _DsfrToggleSwitchState();
}

class _DsfrToggleSwitchState extends State<DsfrToggleSwitch> with MaterialStateMixin<DsfrToggleSwitch> {
  @override
  Widget build(final context) {
    final textColor =
        widget.enabled ? getTextColor(context, widget.composantState) : DsfrColorDecisions.textDisabledGrey(context);
    final statusTextColor = switch ((widget.enabled, widget.composantState)) {
      (false, _) => DsfrColorDecisions.textDisabledGrey(context),
      (true, DsfrComposantStateEnum.error) => DsfrColorDecisions.textDefaultError(context),
      (true, DsfrComposantStateEnum.success) => DsfrColorDecisions.textDefaultSuccess(context),
      _ => DsfrColorDecisions.textActiveBlueFrance(context)
    };

    final rowChildren = [
      DsfrFocusWidget(
        isFocused: isFocused,
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        child: _Switch(
          value: widget.value,
          enabled: widget.enabled,
          composantState: widget.composantState,
        ),
      ),
      Expanded(
        child: Text(
          widget.label,
          style: DsfrTextStyle.bodyMd(color: textColor),
        ),
      ),
    ];

    var columnChildren = [
      Row(
        spacing: DsfrSpacings.s2w,
        children: widget.labelLocation == DsfrToggleLabelLocation.left ? rowChildren.reversed.toList() : rowChildren,
      ),
      if (widget.status != null)
        Align(
          alignment:
              widget.labelLocation == DsfrToggleLabelLocation.left ? Alignment.centerRight : Alignment.centerLeft,
          child: Text(
            widget.status!,
            style: DsfrTextStyle.bodyXs(
              color: statusTextColor,
            ),
          ),
        ),
      if (widget.description != null)
        Padding(
          padding: const EdgeInsets.only(top: DsfrSpacings.s2w),
          child: Text(
            widget.description!,
            style: DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textMentionGrey(context)),
          ),
        ),
    ];
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: columnChildren,
        ),
      ),
    );
  }
}

class _Switch extends StatelessWidget {
  const _Switch({
    required this.value,
    required this.enabled,
    required this.composantState,
  });

  final bool value;
  final bool enabled;
  final DsfrComposantStateEnum composantState;

  @override
  Widget build(final context) {
    const width = 40.0;
    const height = 24.0;
    const offset = width - height;

    final borderColor = enabled
        ? getBorderColor(context, composantState, defaultColor: DsfrColorDecisions.borderActionHighBlueFrance(context))
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
          AnimatedPositioned(
            curve: Curves.easeInOut,
            left: value ? offset : 0,
            top: 0,
            right: value ? 0 : offset,
            bottom: 0,
            duration: Duration(milliseconds: 250),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: circleBackgroundColor,
                border: border,
                shape: BoxShape.circle,
              ),
              child: Visibility(
                visible: value,
                child: Icon(
                  DsfrIcons.systemCheckLine,
                  size: 16,
                  color: iconColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
