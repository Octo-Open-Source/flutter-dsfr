import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

Color getTextColor(BuildContext context, DsfrComposantStateEnum composantStateEnum, {Color? defaultColor}) {
  switch (composantStateEnum) {
    case DsfrComposantStateEnum.error:
      return DsfrColorDecisions.textDefaultError(context);
    case DsfrComposantStateEnum.success:
      return DsfrColorDecisions.textDefaultSuccess(context);
    case DsfrComposantStateEnum.info:
      return DsfrColorDecisions.textDefaultInfo(context);
    case DsfrComposantStateEnum.warning:
      return DsfrColorDecisions.textDefaultWarning(context);
    case DsfrComposantStateEnum.none:
      return DsfrColorDecisions.textDefaultGrey(context);
  }
}

Color getBorderColor(BuildContext context, ComposantStateEnum composantStateEnum, {Color? defaultColor}) {
  switch (composantStateEnum) {
    case ComposantStateEnum.error:
      return DsfrColorDecisions.borderPlainError(context);
    case ComposantStateEnum.success:
      return DsfrColorDecisions.borderPlainSuccess(context);
    case ComposantStateEnum.info:
      return DsfrColorDecisions.borderPlainInfo(context);
    case ComposantStateEnum.warning:
      return DsfrColorDecisions.borderPlainWarning(context);
    case ComposantStateEnum.none:
      return defaultColor ?? DsfrColorDecisions.borderPlainGrey(context);
  }
}