import 'package:flutter_dsfr/composants/buttons/button_variant.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/utils/color_utils.dart';

@immutable
class DsfrButtonForegroundColor extends WidgetStateColor {
  DsfrButtonForegroundColor({
    required final Color $default,
    required final Color disabled,
  })  : _default = $default,
        _disabled = disabled,
        super(colorToInt($default));

  factory DsfrButtonForegroundColor.fromVariant(
    final DsfrButtonVariant variant,
    BuildContext context,
  ) {
    switch (variant) {
      case DsfrButtonVariant.primary:
        return DsfrButtonForegroundColor(
          $default: DsfrColorDecisions.textInvertedBlueFrance(context),
          disabled: DsfrColorDecisions.textDisabledGrey(context),
        );
      case DsfrButtonVariant.secondary:
      case DsfrButtonVariant.tertiary:
      case DsfrButtonVariant.tertiaryWithoutBorder:
        return DsfrButtonForegroundColor(
          $default: DsfrColorDecisions.textActionHighBlueFrance(context),
          disabled: DsfrColorDecisions.textDisabledGrey(context),
        );
    }
  }

  final Color _default;
  final Color _disabled;

  @override
  Color resolve(final Set<WidgetState> states) =>
      states.contains(WidgetState.disabled) ? _disabled : _default;

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is DsfrButtonForegroundColor &&
          runtimeType == other.runtimeType &&
          _default == other._default &&
          _disabled == other._disabled;

  @override
  int get hashCode => _default.hashCode ^ _disabled.hashCode;
}
