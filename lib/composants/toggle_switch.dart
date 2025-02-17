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
    required this.onChanged,
  });

  final bool value;
  final ValueChanged<bool> onChanged;
  final String label;

  @override
  State<DsfrToggleSwitch> createState() => _DsfrToggleSwitchState();
}

class _DsfrToggleSwitchState extends State<DsfrToggleSwitch> with MaterialStateMixin<DsfrToggleSwitch> {
  @override
  Widget build(final context) => Semantics(
        toggled: widget.value,
        child: InkWell(
          onTap: () => widget.onChanged(!widget.value),
          onHighlightChanged: updateMaterialState(WidgetState.pressed),
          onHover: updateMaterialState(WidgetState.hovered),
          focusColor: DsfrColorDecisions.backgroundTransparent(context),
          highlightColor: DsfrColorDecisions.backgroundTransparent(context),
          splashFactory: NoSplash.splashFactory,
          excludeFromSemantics: true,
          onFocusChange: updateMaterialState(WidgetState.focused),
          child: Row(
            children: [
              DsfrFocusWidget(
                isFocused: isFocused,
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                child: _Switch(value: widget.value),
              ),
              const SizedBox(width: DsfrSpacings.s2w),
              Flexible(
                child: Text(
                  widget.label,
                  style: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textLabelGrey(context)),
                ),
              ),
            ],
          ),
        ),
      );
}

class _Switch extends StatelessWidget {
  const _Switch({required this.value});

  final bool value;

  @override
  Widget build(final context) {
    const width = 40.0;
    const height = 24.0;
    const offset = width - height;
    final border = Border.fromBorderSide(BorderSide(color: DsfrColorDecisions.borderActionHighBlueFrance(context)));
    const borderRadius = BorderRadius.all(Radius.circular(height));

    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: value ? DsfrColorDecisions.backgroundActiveBlueFrance(context) : null,
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
                      color: DsfrColorDecisions.backgroundDefaultGrey(context),
                      border: border,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      DsfrIcons.systemCheckLine,
                      size: 16,
                      color: DsfrColorDecisions.textActiveBlueFrance(context),
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
