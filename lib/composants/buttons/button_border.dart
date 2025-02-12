// ignore_for_file: prefer-declaring-const-constructor

import 'package:flutter_dsfr/composants/buttons/button_variant.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter/material.dart';

import '../../fondamentaux/colors.g.dart';

class DsfrButtonBorder extends WidgetStateProperty<Border> {
  DsfrButtonBorder({
    required final Border $default,
    required final Border disabled,
  })  : _default = $default,
        _disabled = disabled;

  // Couleur décision bordure manquante, par exemple : border-action-blue-france
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
        /**
         * Couleur décision manquante 1 : border-action-high-blue-france
         * light : blueFranceSun113
         * dark : blueFrance625
         *
         * Couleur décision manquante 2 : border-disabled-grey
         * light : grey925
         * dark : grey125
         */
        Color borderColor = DsfrColorDecisions.backgroundActionHighBlueFrance(context);
        return DsfrButtonBorder(
          $default: Border.fromBorderSide(
            BorderSide(color: borderColor),
          ),
          disabled: const Border.fromBorderSide(
            BorderSide(color: DsfrColors.grey925),
          ),
        );
      case DsfrButtonVariant.tertiary:
      /**
       * Couleur décision manquante 1 : border-default-grey
       * light : blueFranceSun113
       * dark : blueFrance625
       *
       * Couleur décision manquante 2 : border-disabled-grey
       * light : grey925
       * dark : grey125
       */
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
