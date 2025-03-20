import 'package:flutter_dsfr/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/composants/radios/dsfr_radio_button.dart';
import 'package:flutter_dsfr/composants/radios/dsfr_radio_rich_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

class DsfrRadioButtonGroup<T> extends StatefulWidget {
  final String title;
  final String? description;
  final Map<T, String> values;
  final T? initialValue;
  final Function(T? value) onCallback;
  final bool enabled;
  final DsfrComposantState composantState;
  final Direction direction;
  final bool isRichRadio;
  final DsfrComponentSize? size;

  const DsfrRadioButtonGroup._({
    super.key,
    required this.title,
    this.description,
    required this.values,
    required this.onCallback,
    this.initialValue,
    this.enabled = true,
    this.composantState = const DsfrComposantState.none(),
    required this.direction,
    required this.isRichRadio,
    this.size,
  });

  const DsfrRadioButtonGroup.rich({
    final Key? key,
    required String title,
    String? description,
    required Map<T, String> values,
    T? initialValue,
    required Function(T? value) onCallback,
    bool enabled = true,
    final DsfrComposantState composantState = const DsfrComposantState.none(),
  }) : this._(
          key: key,
          title: title,
          description: description,
          values: values,
          initialValue: initialValue,
          onCallback: onCallback,
          enabled: enabled,
          composantState: composantState,
          direction: Direction.horizontal,
          isRichRadio: true,
        );

  const DsfrRadioButtonGroup.simple({
    final Key? key,
    required String title,
    String? description,
    required Map<T, String> values,
    T? initialValue,
    required Function(T? value) onCallback,
    bool enabled = true,
    final DsfrComposantState composantState = const DsfrComposantState.none(),
    final DsfrComponentSize size = DsfrComponentSize.md,
  }) : this._(
          key: key,
          title: title,
          description: description,
          values: values,
          initialValue: initialValue,
          onCallback: onCallback,
          enabled: enabled,
          composantState: composantState,
          direction: Direction.vertical,
          isRichRadio: false,
          size: size,
        );

  @override
  State<DsfrRadioButtonGroup<T>> createState() => _DsfrRadioButtonGroupState<T>();
}

class _DsfrRadioButtonGroupState<T> extends State<DsfrRadioButtonGroup<T>> {
  T? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  void _handleChange(final T? value) => setState(() {
        _value = value;
        widget.onCallback(_value);
      });

  @override
  Widget build(final context) {
    return DsfrGroup(
      label: widget.title,
      description: widget.description,
      composantState: widget.composantState,
      direction: widget.direction,
      children: widget.values.entries.map((final entry) {
        if (widget.isRichRadio) {
          return DsfrRadioRichButton<T>(
            title: entry.value,
            value: entry.key,
            groupValue: _value,
            onChanged: _handleChange,
            enabled: widget.enabled,
            state: widget.composantState.state,
          );
        } else {
          return DsfrRadioButton(
            label: entry.value,
            groupValue: _value,
            value: entry.key,
            size: widget.size ?? DsfrComponentSize.md,
            onChanged: _handleChange,
            enabled: widget.enabled,
          );
        }
      }).toList(),
    );
  }
}
