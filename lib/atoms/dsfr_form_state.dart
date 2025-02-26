import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/atoms/composant_state_widget.dart';
import 'package:flutter_dsfr/atoms/vertical_bar_widget.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DsfrFormState extends StatelessWidget {
  const DsfrFormState({
    super.key,
    required this.composantState,
    required this.child,
  });

  final ComposantState composantState;
  final Widget child;

  @override
  Widget build(BuildContext context) {
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
                if (composantState.state != ComposantStateEnum.none) ...[
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
