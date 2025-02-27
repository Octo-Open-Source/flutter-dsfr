import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DsfrCheckboxIcon extends StatelessWidget {
  const DsfrCheckboxIcon({
    super.key,
    required this.value,
    this.padding = EdgeInsets.zero,
    this.enabled = true,
    this.state = DsfrComposantStateEnum.none,
  });

  final bool value;
  final EdgeInsets padding;
  final bool enabled;
  final DsfrComposantStateEnum state;

  @override
  Widget build(final context) {
    const dimension = 16.0;
    var backgroundColor = enabled
        ? DsfrColorDecisions.backgroundActionHighBlueFrance(context)
        : DsfrColorDecisions.backgroundDisabledGrey(context);

    var borderColor = getBorderColor(context, state, defaultColor: backgroundColor);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: value ? backgroundColor : null,
        border: Border.fromBorderSide(
          BorderSide(color: borderColor),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: Padding(
        padding: padding,
        child: AnimatedOpacity(
          opacity: value ? 1 : 0,
          curve: Easing.emphasizedAccelerate,
          duration: Durations.short3,
          child: Icon(
            DsfrIcons.systemCheckLine,
            size: dimension,
            color: enabled
                ? DsfrColorDecisions.backgroundAltBlueFrance(context)
                : DsfrColorDecisions.borderContrastGrey(context),
          ),
        ),
      ),
    );
  }
}
