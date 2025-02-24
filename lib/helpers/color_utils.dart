import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

Color getTextColor(BuildContext context, ComposantStateEnum composantStateEnum, {Color? defaultColor}) {
  switch (composantStateEnum) {
    case ComposantStateEnum.error:
      return DsfrColorDecisions.textDefaultError(context);
    case ComposantStateEnum.success:
      return DsfrColorDecisions.textDefaultSuccess(context);
    case ComposantStateEnum.info:
      return DsfrColorDecisions.textDefaultInfo(context);
    case ComposantStateEnum.warning:
      return DsfrColorDecisions.textDefaultWarning(context);
    case ComposantStateEnum.none:
      return DsfrColorDecisions.textDefaultGrey(context);
  }
}
