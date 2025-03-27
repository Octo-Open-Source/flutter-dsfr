import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/composants/divider.dart';
import 'package:flutter_dsfr/composants/toggle_switches/toggle_switch.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DsfrToggleSwitchGroup extends StatelessWidget {
  const DsfrToggleSwitchGroup({
    super.key,
    required this.label,
    this.description,
    this.composantState = const DsfrComposantState.none(),
    required this.children,
  });

  final String label;
  final String? description;
  final DsfrComposantState composantState;
  final List<DsfrToggleSwitch> children;

  @override
  Widget build(BuildContext context) {
    return DsfrGroup<DsfrToggleSwitch>(
      label: label,
      description: description,
      composantState: composantState,
      separator: DsfrDivider(),
      children: children,
    );
  }
}
