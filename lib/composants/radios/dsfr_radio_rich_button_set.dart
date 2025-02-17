import 'package:flutter_dsfr/composants/radios/dsfr_radio_rich_button_set_headless.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';

class DsfrRadioRichButtonSet<T> extends StatelessWidget {
  const DsfrRadioRichButtonSet({
    super.key,
    required this.title,
    required this.values,
    required this.onCallback,
    this.initialValue,
    this.isEnable = true,
    this.isError = false,
    this.errorText,
  });

  final String title;
  final Map<T, String> values;
  final T? initialValue;
  final Callback<T?> onCallback;
  final bool isEnable;
  final bool isError;
  final String? errorText;

  @override
  Widget build(final context) => IntrinsicHeight(
        child: Row(
          children: [
            if (isError) const ErrorDivider(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: DsfrTextStyle.bodyMd(
                      color: isError
                          ? DsfrColorDecisions.textDefaultError(context)
                          : DsfrColorDecisions.textLabelGrey(context),
                    ),
                  ),
                  const SizedBox(height: DsfrSpacings.s1w),
                  DsfrRadioRichButtonSetHeadless(
                    values: values.map(
                      (final key, final value) => MapEntry(key, DsfrRadioButtonItem(value)),
                    ),
                    onCallback: onCallback,
                    initialValue: initialValue,
                    isEnable: isEnable,
                    isError: isError,
                  ),
                  if (isError && errorText != null && errorText!.isNotEmpty ) ...[
                    const SizedBox(height: DsfrSpacings.s2w),
                    Row(
                      children: [
                        Icon(DsfrIcons.systemFrErrorFill, color: DsfrColorDecisions.borderPlainError(context)),
                        const SizedBox(width: DsfrSpacings.s1v),
                        Text(
                          errorText!,
                          style: DsfrTextStyle.bodyXs(
                            color: DsfrColorDecisions.textDefaultError(context),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      );
}

class ErrorDivider extends StatelessWidget {
  const ErrorDivider({
    super.key,
  });

  @override
  Widget build(final context) => Row(
        children: [
          VerticalDivider(
            color: DsfrColorDecisions.borderPlainError(context),
            width: 0,
            thickness: 2,
          ),
          const SizedBox(width: DsfrSpacings.s2w),
        ],
      );
}
