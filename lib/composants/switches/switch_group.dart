import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/composants/divider.dart';
import 'package:flutter_dsfr/composants/switches/switch.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class SwitchGroup extends StatelessWidget {
  const SwitchGroup({
    super.key,
    required this.label,
    this.description,
    this.composantState = const DsfrComposantState.none(),
    required this.children,
  });

  final String label;
  final String? description;
  final DsfrComposantState composantState;
  final List<DsfrSwitch> children;

  @override
  Widget build(BuildContext context) {
    return DsfrGroup(
      label: label,
      description: description,
      composantState: composantState,
      separator: DsfrDivider(),
      children: children,
    );
  }
}
