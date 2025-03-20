import 'package:flutter_dsfr/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/composants/radios/dsfr_radio_rich_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DsfrRadioRichButtonGroup<T> extends StatefulWidget {
  const DsfrRadioRichButtonGroup({
    super.key,
    required this.title,
    required this.values,
    required this.onCallback,
    this.initialValue,
    this.enabled = true,
    this.composantState = const DsfrComposantState.none(),
  });

  final String title;
  final Map<T, String> values;
  final T? initialValue;
  final Function(T? value) onCallback;
  final bool enabled;
  final DsfrComposantState composantState;

  @override
  State<DsfrRadioRichButtonGroup<T>> createState() => _DsfrRadioRichButtonGroupState<T>();
}

class _DsfrRadioRichButtonGroupState<T> extends State<DsfrRadioRichButtonGroup<T>> {
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
      composantState: widget.composantState,
      direction: Direction.horizontal,
      children: widget.values.entries
          .map((final entry) => DsfrRadioRichButton<T>(
                title: entry.value,
                value: entry.key,
                groupValue: _value,
                onChanged: _handleChange,
                enabled: widget.enabled,
                state: widget.composantState.state,
              ))
          .toList(),
    );
  }
}
