import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/src/atoms/dsfr_component_state_widget.dart';
import 'package:flutter_dsfr/src/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/src/atoms/dsfr_vertical_bar_widget.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_spacings.g.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';

class DsfrFormState extends StatelessWidget {
  const DsfrFormState({super.key, required this.componentState, required this.child});

  final DsfrComponentState componentState;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (GroupProvider.of(context) != null || componentState.state == DsfrComponentStateEnum.none) {
      return child;
    } else {
      return IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DsfrVerticalBarWidget(componentState: componentState),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(child: child),
                  const SizedBox(height: DsfrSpacings.s2w),
                  DsfrComponentStateWidget(componentState: componentState),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
