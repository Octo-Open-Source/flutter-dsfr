import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/atoms/component_state_widget.dart';
import 'package:flutter_dsfr/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/atoms/vertical_bar_widget.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';

class DsfrFormState extends StatelessWidget {
  const DsfrFormState({
    super.key,
    required this.componentState,
    required this.child,
  });

  final DsfrComponentState componentState;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (GroupProvider.of(context) != null) {
      return child;
    } else {
      return IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalBarWidget(componentState: componentState),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(child: child),
                  if (componentState.state != DsfrComponentStateEnum.none) ...[
                    const SizedBox(height: DsfrSpacings.s2w),
                    ComponentStateWidget(componentState: componentState),
                  ],
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
