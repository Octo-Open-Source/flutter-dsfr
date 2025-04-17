// ignore_for_file: prefer-declaring-const-constructor
import 'package:flutter_dsfr/components/buttons/dsfr_button_variant.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter/material.dart';

class DsfrButtonBorder extends WidgetStateProperty<Border> {
  DsfrButtonBorder({
    required final Border $default,
    required final Border disabled,
  })  : _default = $default,
        _disabled = disabled;

  factory DsfrButtonBorder.fromVariant(
      final DsfrButtonVariant variant,
      final BuildContext context,
  ) {
    switch (variant) {
      case DsfrButtonVariant.primary:
      case DsfrButtonVariant.tertiaryWithoutBorder:
        return DsfrButtonBorder(
          $default: const Border(),
          disabled: const Border(),
        );
      case DsfrButtonVariant.secondary:
        return DsfrButtonBorder(
          $default: Border.fromBorderSide(
            BorderSide(color: DsfrColorDecisions.borderActionHighBlueFrance(context)),
          ),
          disabled: Border.fromBorderSide(
            BorderSide(color: DsfrColorDecisions.borderDisabledGrey(context)),
          ),
        );
      case DsfrButtonVariant.tertiary:
        return DsfrButtonBorder(
          $default: Border.fromBorderSide(
            BorderSide(color: DsfrColorDecisions.borderDefaultGrey(context)),
          ),
          disabled: Border.fromBorderSide(
            BorderSide(color: DsfrColorDecisions.borderDisabledGrey(context)),
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
