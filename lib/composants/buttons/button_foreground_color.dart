import 'package:flutter_dsfr/composants/buttons/button_variant.dart';
import 'package:flutter_dsfr/fondamentaux/colors.g.dart';
import 'package:flutter/material.dart';

@immutable
class DsfrButtonForegroundColor extends WidgetStateColor {
  DsfrButtonForegroundColor({
    required final Color $default,
    required final Color disabled,
  })  : _default = $default,
        _disabled = disabled,
        super($default.value);

  factory DsfrButtonForegroundColor.fromVariant(
    final DsfrButtonVariant variant,
  ) {
    switch (variant) {
      case DsfrButtonVariant.primary:
        return DsfrButtonForegroundColor(
          $default: DsfrColors.blueFrance975,
          disabled: DsfrColors.grey625,
        );
      case DsfrButtonVariant.secondary:
      case DsfrButtonVariant.tertiary:
      case DsfrButtonVariant.tertiaryWithoutBorder:
        return DsfrButtonForegroundColor(
          $default: DsfrColors.blueFranceSun113,
          disabled: DsfrColors.grey625,
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
