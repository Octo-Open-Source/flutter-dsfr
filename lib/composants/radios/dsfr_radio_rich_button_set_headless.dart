import 'package:flutter_dsfr/composants/radios/dsfr_radio_rich_button.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter_dsfr/helpers/iterable_extension.dart';
import 'package:flutter/material.dart';

typedef Callback<T> = void Function(T value);

enum DsfrRadioButtonSetMode { row, column }

class DsfrRadioButtonItem {
  const DsfrRadioButtonItem(this.value);

  final String value;
}

class DsfrRadioRichButtonSetHeadless<T> extends StatefulWidget {
  const DsfrRadioRichButtonSetHeadless({
    super.key,
    required this.values,
    required this.onCallback,
    this.initialValue,
    this.mode = DsfrRadioButtonSetMode.row,
    this.enabled = true,
    this.hasError = false,
  });

  final Map<T, DsfrRadioButtonItem> values;
  final T? initialValue;
  final Callback<T?> onCallback;
  final DsfrRadioButtonSetMode mode;
  final bool enabled;
  final bool hasError;

  @override
  State<DsfrRadioRichButtonSetHeadless<T>> createState() => _DsfrRadioRichButtonSetHeadlessState<T>();
}

class _DsfrRadioRichButtonSetHeadlessState<T> extends State<DsfrRadioRichButtonSetHeadless<T>> {
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
    final children = widget.values.entries
        .map(
          (final e) => DsfrRadioRichButton<T>(
            title: e.value.value,
            value: e.key,
            groupValue: _value,
            onChanged: widget.enabled ? _handleChange : null,
            enabled: widget.enabled,
            hasError: widget.hasError,
          ),
        )
        .toList();

    return switch (widget.mode) {
      DsfrRadioButtonSetMode.row => Wrap(
          spacing: DsfrSpacings.s1w,
          runSpacing: DsfrSpacings.s1w,
          children: children,
        ),
      DsfrRadioButtonSetMode.column => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children.separator(const SizedBox(height: DsfrSpacings.s1w)).toList(),
        ),
    };
  }
}
