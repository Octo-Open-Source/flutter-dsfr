import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/components/checkboxes/dsfr_simple_checkbox.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';

class DsfrCheckbox extends StatelessWidget {
  const DsfrCheckbox._({
    super.key,
    required this.label,
    required this.value,
    this.description,
    required this.onChanged,
    required this.padding,
    this.focusNode,
    this.enabled = true,
    this.componentState = const DsfrComponentState.none(),
  });

  const DsfrCheckbox.sm({
    required final String label,
    required final bool value,
    final String? description,
    required final ValueChanged<bool>? onChanged,
    final FocusNode? focusNode,
    final Key? key,
    final enabled = true,
    final componentState = const DsfrComponentState.none(),
  }) : this._(
          key: key,
          label: label,
          value: value,
          description: description,
          onChanged: onChanged,
          padding: EdgeInsets.zero,
          focusNode: focusNode,
          enabled: enabled,
          componentState: componentState,
        );

  const DsfrCheckbox.md({
    required final String label,
    required final bool value,
    final String? description,
    final ValueChanged<bool>? onChanged,
    final FocusNode? focusNode,
    final Key? key,
    final enabled = true,
    final componentState = const DsfrComponentState.none(),
  }) : this._(
          key: key,
          label: label,
          value: value,
          description: description,
          onChanged: onChanged,
          padding: const EdgeInsets.all(DsfrSpacings.s1v),
          focusNode: focusNode,
          enabled: enabled,
          componentState: componentState,
        );

  final String label;
  final bool value;
  final String? description;
  final ValueChanged<bool>? onChanged;
  final EdgeInsets padding;
  final FocusNode? focusNode;
  final bool enabled;
  final DsfrComponentState componentState;

  @override
  Widget build(final context) {
    return DsfrFormState(
      componentState: componentState,
      child: DsfrCheckboxChild(
        label: label,
        value: value,
        onChanged: onChanged,
        enabled: enabled,
        description: description,
        state: GroupProvider.of(context)?.componentState.state ?? componentState.state,
        padding: padding,
        focusNode: focusNode,
      ),
    );
  }
}
