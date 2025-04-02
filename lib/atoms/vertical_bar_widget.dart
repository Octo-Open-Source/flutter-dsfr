import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';

class VerticalBarWidget extends StatelessWidget {
  final DsfrComponentState componentState;

  const VerticalBarWidget({
    super.key,
    required this.componentState,
  });

  @override
  Widget build(final context) {
    if (componentState.state == DsfrComponentStateEnum.none) {
      return const SizedBox.shrink();
    } else {
      return Row(
        children: [
          VerticalDivider(
            color: getColor(context),
            width: 0,
            thickness: 2,
          ),
          const SizedBox(width: DsfrSpacings.s2w),
        ],
      );
    }
  }

  Color? getColor(BuildContext context) {
    switch (componentState.state) {
      case DsfrComponentStateEnum.highlight:
        return DsfrColorDecisions.borderDefaultBlueFrance(context);
      case DsfrComponentStateEnum.error:
        return DsfrColorDecisions.borderPlainError(context);
      case DsfrComponentStateEnum.success:
        return DsfrColorDecisions.borderPlainSuccess(context);
      default:
        return null;
    }
  }
}
