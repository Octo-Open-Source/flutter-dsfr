// ignore_for_file: prefer-declaring-const-constructor

import 'package:flutter_dsfr/composants/buttons/button_variant.dart';
import 'package:flutter_dsfr/fondamentaux/colors.g.dart';
import 'package:flutter/material.dart';

class DsfrButtonBorder extends WidgetStateProperty<Border> {
  DsfrButtonBorder({
    required final Border $default,
    required final Border disabled,
  })  : _default = $default,
        _disabled = disabled;

  factory DsfrButtonBorder.fromVariant(final DsfrButtonVariant variant) {
    switch (variant) {
      case DsfrButtonVariant.primary:
      case DsfrButtonVariant.tertiaryWithoutBorder:
        return DsfrButtonBorder(
          $default: const Border(),
          disabled: const Border(),
        );
      case DsfrButtonVariant.secondary:
        return DsfrButtonBorder(
          $default: const Border.fromBorderSide(
            BorderSide(color: DsfrColors.blueFranceSun113),
          ),
          disabled: const Border.fromBorderSide(
            BorderSide(color: DsfrColors.grey925),
          ),
        );
      case DsfrButtonVariant.tertiary:
        return DsfrButtonBorder(
          $default: const Border.fromBorderSide(
            BorderSide(color: DsfrColors.grey900),
          ),
          disabled: const Border.fromBorderSide(
            BorderSide(color: DsfrColors.grey925),
          ),
        );
    }
  }

  final Border _default;
  final Border _disabled;

  @override
  Border resolve(final Set<WidgetState> states) =>
      states.contains(WidgetState.disabled) ? _disabled : _default;
}
