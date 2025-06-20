import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/helpers/color_utils.dart';

class DsfrCheckboxIcon extends StatelessWidget {
  const DsfrCheckboxIcon({
    super.key,
    required this.size,
    required this.value,
    this.enabled = true,
    this.state = DsfrComponentStateEnum.none,
  });

  final bool value;
  final DsfrComponentSize size;
  final bool enabled;
  final DsfrComponentStateEnum state;

  double _getDimension(final DsfrComponentSize size) {
    switch (size) {
      case DsfrComponentSize.md:
        return 24;
      case DsfrComponentSize.sm:
        return 16;
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  @override
  Widget build(final context) {
    const iconSize = 16.0;
    var backgroundColor = enabled
        ? DsfrColorDecisions.backgroundActionHighBlueFrance(context)
        : DsfrColorDecisions.backgroundDisabledGrey(context);

    var borderColor = getBorderColor(context, state, defaultColor: backgroundColor);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: value ? backgroundColor : null,
        border: Border.fromBorderSide(BorderSide(color: borderColor)),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: SizedBox.square(
        dimension: _getDimension(size),
        child: AnimatedOpacity(
          opacity: value ? 1 : 0,
          curve: Easing.emphasizedAccelerate,
          duration: Durations.short3,
          child: Icon(
            DsfrIcons.systemCheckLine,
            size: iconSize,
            color: enabled
                ? DsfrColorDecisions.backgroundAltBlueFrance(context)
                : DsfrColorDecisions.borderContrastGrey(context),
          ),
        ),
      ),
    );
  }
}
