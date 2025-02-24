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

  final ComposantState composantState;

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
  final ComposantStateEnum state;

  const ComposantStateIcon({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Icon(_getIcon(), color: _getIconColor(context));
  }

  Color _getIconColor(BuildContext context) {
    switch (state) {
      case ComposantStateEnum.error:
        return DsfrColorDecisions.borderPlainError(context);
      case ComposantStateEnum.success:
        return DsfrColorDecisions.borderPlainSuccess(context);
      case ComposantStateEnum.info:
        return DsfrColorDecisions.borderPlainInfo(context);
      case ComposantStateEnum.warning:
        return DsfrColorDecisions.backgroundFlatWarning(context);
      case ComposantStateEnum.none:
        return DsfrColorDecisions.borderPlainGrey(context);
    }
  }

  IconData _getIcon() {
    switch (state) {
      case ComposantStateEnum.error:
        return DsfrIcons.systemFrErrorFill;
      case ComposantStateEnum.success:
        return DsfrIcons.systemFrSuccessFill;
      case ComposantStateEnum.info:
        return DsfrIcons.systemFrInfoFill;
      case ComposantStateEnum.warning:
        return DsfrIcons.systemFrWarningFill;
      case ComposantStateEnum.none:
        return DsfrIcons.systemFrErrorFill;
    }
  }
}
