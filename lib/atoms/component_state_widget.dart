import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';

class ComponentStateWidget extends StatelessWidget {
  const ComponentStateWidget({
    super.key,
    required this.componentState,
  });

  final DsfrComponentState componentState;

  @override
  Widget build(BuildContext context) {
    if (componentState.text == null) {
      return const SizedBox.shrink();
    } else {
      return Row(
        children: [
          ComponentStateIcon(state: componentState.state),
          const SizedBox(width: DsfrSpacings.s1v),
          Flexible(
            child: Text(
              componentState.text!,
              style: DsfrTextStyle.bodyXs(
                color: getTextColor(context, componentState.state),
              ),
            ),
          ),
        ],
      );
    }
  }
}

class ComponentStateIcon extends StatelessWidget {
  final DsfrComponentStateEnum state;

  const ComponentStateIcon({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Icon(_getIcon(), color: _getIconColor(context));
  }

  Color _getIconColor(BuildContext context) {
    switch (state) {
      case DsfrComponentStateEnum.error:
        return DsfrColorDecisions.borderPlainError(context);
      case DsfrComponentStateEnum.success:
        return DsfrColorDecisions.borderPlainSuccess(context);
      case DsfrComponentStateEnum.info:
        return DsfrColorDecisions.borderPlainInfo(context);
      case DsfrComponentStateEnum.warning:
        return DsfrColorDecisions.backgroundFlatWarning(context);
      case DsfrComponentStateEnum.none:
        return DsfrColorDecisions.borderPlainGrey(context);
      case DsfrComponentStateEnum.highlight:
        throw UnimplementedError();
    }
  }

  IconData _getIcon() {
    switch (state) {
      case DsfrComponentStateEnum.error:
        return DsfrIcons.systemFrErrorFill;
      case DsfrComponentStateEnum.success:
        return DsfrIcons.systemFrSuccessFill;
      case DsfrComponentStateEnum.info:
        return DsfrIcons.systemFrInfoFill;
      case DsfrComponentStateEnum.warning:
        return DsfrIcons.systemFrWarningFill;
      case DsfrComponentStateEnum.none:
        return DsfrIcons.systemFrErrorFill;
      case DsfrComponentStateEnum.highlight:
        throw UnimplementedError();
    }
  }
}
