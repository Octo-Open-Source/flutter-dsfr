import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/composants/checkboxes/dsfr_simple_checkbox.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

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
    this.composantState = const DsfrComposantState.none(),
  });

  const DsfrCheckbox.sm({
    required final String label,
    required final bool value,
    final String? description,
    required final ValueChanged<bool>? onChanged,
    final FocusNode? focusNode,
    final Key? key,
    final enabled = true,
    final composantState = const DsfrComposantState.none(),
  }) : this._(
          key: key,
          label: label,
          value: value,
          description: description,
          onChanged: onChanged,
          padding: EdgeInsets.zero,
          focusNode: focusNode,
          enabled: enabled,
          composantState: composantState,
        );

  const DsfrCheckbox.md({
    required final String label,
    required final bool value,
    final String? description,
    final ValueChanged<bool>? onChanged,
    final FocusNode? focusNode,
    final Key? key,
    final enabled = true,
    final composantState = const DsfrComposantState.none(),
  }) : this._(
          key: key,
          label: label,
          value: value,
          description: description,
          onChanged: onChanged,
          padding: const EdgeInsets.all(DsfrSpacings.s1v),
          focusNode: focusNode,
          enabled: enabled,
          composantState: composantState,
        );

  final String label;
  final bool value;
  final String? description;
  final ValueChanged<bool>? onChanged;
  final EdgeInsets padding;
  final FocusNode? focusNode;
  final bool enabled;
  final DsfrComposantState composantState;

  @override
  Widget build(final context) {
    bool isInGroup = false;
    DsfrComposantState groupState = composantState;
    context.visitAncestorElements((element) {
      if (element.widget is DsfrGroup) {
        isInGroup = true;
        groupState = (element.widget as DsfrGroup).composantState;
        return false;
      }
      return true;
    });

    return DsfrFormState(
      composantState: composantState,
      isInGroup: isInGroup,
      child: DsfrCheckboxChild(
        label: label,
        value: value,
        onChanged: onChanged,
        enabled: enabled,
        description: description,
        state: isInGroup ? groupState.state : composantState.state,
        padding: padding,
        focusNode: focusNode,
      ),
    );
  }
}
