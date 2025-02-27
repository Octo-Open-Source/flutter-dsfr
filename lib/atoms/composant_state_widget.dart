import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class ComposantStateWidget extends StatelessWidget {
  const ComposantStateWidget({
    super.key,
    required this.composantState,
  });

  final DsfrComposantState composantState;

  @override
  Widget build(BuildContext context) {
    if (composantState.text == null) {
      return const SizedBox.shrink();
    } else {
      return Row(
        children: [
          ComposantStateIcon(state: composantState.state),
          const SizedBox(width: DsfrSpacings.s1v),
          Flexible(
            child: Text(
              composantState.text!,
              style: DsfrTextStyle.bodyXs(
                color: getTextColor(context, composantState.state),
              ),
            ),
          ),
        ],
      );
    }
  }
}

class ComposantStateIcon extends StatelessWidget {
  final DsfrComposantStateEnum state;

  const ComposantStateIcon({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Icon(_getIcon(), color: _getIconColor(context));
  }

  Color _getIconColor(BuildContext context) {
    switch (state) {
      case DsfrComposantStateEnum.error:
        return DsfrColorDecisions.borderPlainError(context);
      case DsfrComposantStateEnum.success:
        return DsfrColorDecisions.borderPlainSuccess(context);
      case DsfrComposantStateEnum.info:
        return DsfrColorDecisions.borderPlainInfo(context);
      case DsfrComposantStateEnum.warning:
        return DsfrColorDecisions.backgroundFlatWarning(context);
      case DsfrComposantStateEnum.none:
        return DsfrColorDecisions.borderPlainGrey(context);
    }
  }

  IconData _getIcon() {
    switch (state) {
      case DsfrComposantStateEnum.error:
        return DsfrIcons.systemFrErrorFill;
      case DsfrComposantStateEnum.success:
        return DsfrIcons.systemFrSuccessFill;
      case DsfrComposantStateEnum.info:
        return DsfrIcons.systemFrInfoFill;
      case DsfrComposantStateEnum.warning:
        return DsfrIcons.systemFrWarningFill;
      case DsfrComposantStateEnum.none:
        return DsfrIcons.systemFrErrorFill;
    }
  }
}
