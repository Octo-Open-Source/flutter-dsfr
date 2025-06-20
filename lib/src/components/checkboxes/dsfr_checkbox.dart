import 'package:flutter_dsfr/src/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/src/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/src/components/checkboxes/dsfr_checkbox_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';

class DsfrCheckbox extends StatelessWidget {
  const DsfrCheckbox({
    super.key,
    required this.label,
    required this.size,
    required this.value,
    required this.onChanged,
    this.description,
    this.focusNode,
    this.enabled = true,
    this.componentState = const DsfrComponentState.none(),
  });

  final String label;
  final DsfrComponentSize size;
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? description;
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
        size: size,
        focusNode: focusNode,
      ),
    );
  }
}
