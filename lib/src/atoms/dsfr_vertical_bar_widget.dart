import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_spacings.g.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';

class DsfrVerticalBarWidget extends StatelessWidget {
  final DsfrComponentState componentState;

  const DsfrVerticalBarWidget({super.key, required this.componentState});

  @override
  Widget build(final context) {
    if (componentState.state == DsfrComponentStateEnum.none) {
      return const SizedBox.shrink();
    } else {
      return Row(
        children: [
          VerticalDivider(color: getColor(context), width: 0, thickness: 2),
          const SizedBox(width: DsfrSpacings.s3v),
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
