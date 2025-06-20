import 'package:flutter_dsfr/src/components/buttons/dsfr_button_variant.dart';
import 'package:flutter_dsfr/src/helpers/color_extension.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter/material.dart';

@immutable
class DsfrButtonForegroundColor extends WidgetStateColor {
  DsfrButtonForegroundColor({required final Color $default, required final Color disabled})
    : _default = $default,
      _disabled = disabled,
      super($default.colorToInt());

  factory DsfrButtonForegroundColor.fromVariant(final DsfrButtonVariant variant, BuildContext context) {
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
  Color resolve(final Set<WidgetState> states) => states.contains(WidgetState.disabled) ? _disabled : _default;

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
