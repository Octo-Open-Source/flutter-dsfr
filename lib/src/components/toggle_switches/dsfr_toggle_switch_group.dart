import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/src/components/dsfr_divider.dart';
import 'package:flutter_dsfr/src/components/toggle_switches/dsfr_toggle_switch.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';

class DsfrToggleSwitchGroup extends StatelessWidget {
  const DsfrToggleSwitchGroup({
    super.key,
    required this.label,
    this.description,
    this.componentState = const DsfrComponentState.none(),
    required this.children,
  });

  final String label;
  final String? description;
  final DsfrComponentState componentState;
  final List<DsfrToggleSwitch> children;

  @override
  Widget build(BuildContext context) {
    return DsfrGroup<DsfrToggleSwitch>(
      label: label,
      description: description,
      componentState: componentState,
      separator: DsfrDivider(),
      children: children,
    );
  }
}
