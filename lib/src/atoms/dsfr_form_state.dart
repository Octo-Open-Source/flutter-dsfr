import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/src/atoms/dsfr_component_state_widget.dart';
import 'package:flutter_dsfr/src/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/src/atoms/dsfr_vertical_bar_widget.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_spacings.g.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';

class DsfrFormState extends StatefulWidget {
  const DsfrFormState({super.key, required this.componentState, required this.child});

  final DsfrComponentState componentState;
  final Widget child;

  @override
  State<DsfrFormState> createState() => _DsfrFormStateState();
}

class _DsfrFormStateState extends State<DsfrFormState> {
  /// L'enfant change de place dans l'arbre selon l'état (avec ou sans barre et message).
  /// Sans clé globale, son état serait recréé : un champ en cours de saisie perdrait le focus et fermerait le clavier.
  final GlobalKey _childKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final child = KeyedSubtree(key: _childKey, child: widget.child);
    if (GroupProvider.of(context) != null || widget.componentState.state == DsfrComponentStateEnum.none) {
      return child;
    } else {
      return IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DsfrVerticalBarWidget(componentState: widget.componentState),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(child: child),
                  const SizedBox(height: DsfrSpacings.s2w),
                  DsfrComponentStateWidget(componentState: widget.componentState),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
