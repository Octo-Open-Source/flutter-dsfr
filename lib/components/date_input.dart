// ignore_for_file: prefer-correct-callback-field-name

import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DateInput extends StatefulWidget {
  const DateInput({
    super.key,
    required this.label,
    this.hintText,
    required this.onChanged,
    required this.firstDate,
    required this.lastDate,
    required this.initialDate,
    required this.controller,
    this.locale,
    this.initialValue,
    this.enabled = true,
    this.composantState = const DsfrComposantState.none(),
  });

  final String label;
  final String? hintText;
  final ValueChanged<String> onChanged;
  final DateTime firstDate;
  final DateTime lastDate;
  final DateTime initialDate;
  final String? initialValue;
  final TextEditingController controller;
  final Locale? locale;
  final bool enabled;
  final DsfrComposantState composantState;

  @override
  State<DateInput> createState() => _DsfrDatePickerState();
}

class _DsfrDatePickerState extends State<DateInput> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(final context) {
    return DsfrFormState(
        composantState: widget.composantState,
        child: FocusTraversalGroup(
            policy: OrderedTraversalPolicy(),
            child: Semantics(
              label: widget.label,
              hint: widget.hintText,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExcludeSemantics(
                    child: Text(
                      widget.label,
                      style: DsfrTextStyle.bodyMd(color: widget.enabled ?
                        getTextColor(context, widget.composantState.state, defaultColor: DsfrColorDecisions.textLabelGrey(context))
                          : DsfrColorDecisions.textDisabledGrey(context)
                      ),
                    ),
                  ),
                  if (widget.hintText != null) ...[
                    const SizedBox(height: DsfrSpacings.s1v),
                    ExcludeSemantics(
                      child: Text(
                        widget.hintText!,
                        style: DsfrTextStyle.bodyXs(
                          color: widget.enabled
                              ? DsfrColorDecisions.textMentionGrey(context)
                              : DsfrColorDecisions.textDisabledGrey(context),
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: DsfrSpacings.s1w),
                  FocusTraversalOrder(
                    order: const NumericFocusOrder(1),
                    child: Semantics(
                      identifier: widget.label,
                      child: DsfrInputHeadless(
                        key: ValueKey(widget.label),
                        controller: widget.controller,
                        onChanged: widget.onChanged,
                        isDatePicker: true,
                        firstDate: widget.firstDate,
                        lastDate: widget.lastDate,
                        initialDate: widget.initialDate,
                        initialValue: widget.initialValue,
                        enabled: widget.enabled,
                        locale: widget.locale,
                      ),
                    ),
                  )
                ],
              )

            )
        )
    );
  }
}
