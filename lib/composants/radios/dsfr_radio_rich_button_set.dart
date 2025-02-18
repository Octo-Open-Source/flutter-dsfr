import 'package:flutter_dsfr/atoms/composant_state_widget.dart';
import 'package:flutter_dsfr/atoms/vertical_bar_widget.dart';
import 'package:flutter_dsfr/composants/radios/dsfr_radio_rich_button_set_headless.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DsfrRadioRichButtonSet<T> extends StatelessWidget {
  const DsfrRadioRichButtonSet({
    super.key,
    required this.title,
    required this.values,
    required this.onCallback,
    this.initialValue,
    this.enabled = true,
    this.composantState = const ComposantState(),
  });

  final String title;
  final Map<T, String> values;
  final T? initialValue;
  final Callback<T?> onCallback;
  final bool enabled;
  final ComposantState composantState;

  @override
  Widget build(final context) => IntrinsicHeight(
        child: Row(
          children: [
            VerticalBarWidget(composantState: composantState),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: DsfrTextStyle.bodyMd(
                      color: getTextColor(
                        context,
                        composantState.state,
                        defaultColor: DsfrColorDecisions.textLabelGrey(context),
                      ),
                    ),
                  ),
                  const SizedBox(height: DsfrSpacings.s1w),
                  DsfrRadioRichButtonSetHeadless(
                    values: values.map(
                      (final key, final value) => MapEntry(key, DsfrRadioButtonItem(value)),
                    ),
                    onCallback: onCallback,
                    initialValue: initialValue,
                    enabled: enabled,
                    state: composantState.state,
                  ),
                  if (composantState.state != ComposantStateEnum.none) ...[
                    const SizedBox(height: DsfrSpacings.s2w),
                    ComposantStateWidget(composantState: composantState),
                  ],
                ],
              ),
            ),
          ],
        ),
      );
}
