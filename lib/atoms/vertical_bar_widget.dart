import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class VerticalBarWidget extends StatelessWidget {
  final ComposantState composantState;

  const VerticalBarWidget({
    super.key,
    required this.composantState,
  });

  @override
  Widget build(final context) {
    if (composantState.state == ComposantStateEnum.none) {
      return const SizedBox.shrink();
    } else {
      return Row(
        children: [
          VerticalDivider(
            color: composantState.state == ComposantStateEnum.error
                ? DsfrColorDecisions.borderPlainError(context)
                : DsfrColorDecisions.borderPlainSuccess(context),
            width: 0,
            thickness: 2,
          ),
          const SizedBox(width: DsfrSpacings.s2w),
        ],
      );
    }
  }
}
