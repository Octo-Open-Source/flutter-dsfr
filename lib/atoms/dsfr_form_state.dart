import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/atoms/composant_state_widget.dart';
import 'package:flutter_dsfr/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/atoms/vertical_bar_widget.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DsfrFormState extends StatelessWidget {
  const DsfrFormState({
    super.key,
    required this.composantState,
    required this.child,
    this.isInGroup = false,
  });

  final DsfrComposantState composantState;
  final Widget child;
  final bool isInGroup;

  @override
  Widget build(BuildContext context) {
    final group = GroupProvider.of(context);

    if (group != null) {
      return child;
    }

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalBarWidget(composantState: composantState),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(child: child),
                if (composantState.state != DsfrComposantStateEnum.none) ...[
                  const SizedBox(height: DsfrSpacings.s2w),
                  ComposantStateWidget(composantState: composantState),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
