import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';

Color getTextColor(BuildContext context, DsfrComponentStateEnum componentStateEnum, {Color? defaultColor}) {
  switch (componentStateEnum) {
    case DsfrComponentStateEnum.error:
      return DsfrColorDecisions.textDefaultError(context);
    case DsfrComponentStateEnum.success:
      return DsfrColorDecisions.textDefaultSuccess(context);
    case DsfrComponentStateEnum.info:
      return DsfrColorDecisions.textDefaultInfo(context);
    case DsfrComponentStateEnum.warning:
      return DsfrColorDecisions.textDefaultWarning(context);
    case DsfrComponentStateEnum.none:
      return DsfrColorDecisions.textDefaultGrey(context);
    case DsfrComponentStateEnum.highlight:
      throw UnimplementedError();
  }
}

Color getBorderColor(BuildContext context, DsfrComponentStateEnum componentStateEnum, {Color? defaultColor}) {
  switch (componentStateEnum) {
    case DsfrComponentStateEnum.error:
      return DsfrColorDecisions.borderPlainError(context);
    case DsfrComponentStateEnum.success:
      return DsfrColorDecisions.borderPlainSuccess(context);
    case DsfrComponentStateEnum.info:
      return DsfrColorDecisions.borderPlainInfo(context);
    case DsfrComponentStateEnum.warning:
      return DsfrColorDecisions.borderPlainWarning(context);
    case DsfrComponentStateEnum.none:
      return defaultColor ?? DsfrColorDecisions.borderPlainGrey(context);
    case DsfrComponentStateEnum.highlight:
      throw UnimplementedError();
  }
}
