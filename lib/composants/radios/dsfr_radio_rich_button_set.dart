import 'package:flutter_dsfr/composants/radios/dsfr_radio_rich_button_set_headless.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';

class DsfrRadioRichButtonSet<T> extends StatelessWidget {
  const DsfrRadioRichButtonSet({
    super.key,
    required this.title,
    required this.values,
    required this.onCallback,
    this.initialValue,
  });

  final String title;
  final Map<T, String> values;
  final T? initialValue;
  final Callback<T?> onCallback;

  @override
  Widget build(final context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const DsfrTextStyle.bodyMd()),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButtonSetHeadless(
            values: values.map(
              (final key, final value) =>
                  MapEntry(key, DsfrRadioButtonItem(value)),
            ),
            onCallback: onCallback,
            initialValue: initialValue,
          ),
        ],
      );
}
