// ignore_for_file: prefer-correct-callback-field-name

import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/composants/checkbox.dart';
import 'package:flutter_dsfr/composants/input_headless.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DsfrInput extends StatefulWidget {
  const DsfrInput({
    super.key,
    required this.label,
    this.hintText,
    this.suffixText,
    this.controller,
    this.initialValue,
    required this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.enabled = true,
    this.autofocus = false,
    this.isPasswordMode = false,
    this.displayPasswordLabel = 'Afficher',
    this.autocorrect,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.inputFormatters,
    this.scrollPadding = const EdgeInsets.all(20),
    this.autofillHints,
    this.composantState = const DsfrComposantState.none(),
  });

  final String label;
  final String? hintText;
  final String? suffixText;
  final TextEditingController? controller;
  final String? initialValue;
  final ValueChanged<String> onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final bool enabled;
  final bool autofocus;
  final bool isPasswordMode;
  final String displayPasswordLabel;
  final bool? autocorrect;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsets scrollPadding;
  final Iterable<String>? autofillHints;
  final DsfrComposantState composantState;

  @override
  State<DsfrInput> createState() => _DsfrInputState();
}

class _DsfrInputState extends State<DsfrInput> {
  bool _passwordVisibility = false;

  void _handlePasswordVisibility(final bool value) => setState(() => _passwordVisibility = value);

  @override
  Widget build(final context) {
    return DsfrFormState(
      composantState: widget.composantState,
      child: FocusTraversalGroup(
        policy: OrderedTraversalPolicy(),
        child: Semantics(
          textField: true,
          label: widget.label,
          hint: widget.hintText,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.isPasswordMode) ...[
                _DsfrInputPasswordLabel(
                  inputLabel: widget.label,
                  displayPasswordLabel: widget.displayPasswordLabel,
                  composantState: widget.composantState,
                  passwordVisibility: _passwordVisibility,
                  handlePasswordVisibility: _handlePasswordVisibility,
                  enabled: widget.enabled,
                ),
              ] else ...[
                _DsfrInputLabel(
                  labelText: widget.label,
                  composantState: widget.composantState,
                  enabled: widget.enabled,
                ),
              ],
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
                    initialValue: widget.initialValue,
                    controller: widget.controller,
                    suffixText: widget.suffixText,
                    onChanged: widget.onChanged,
                    onFieldSubmitted: widget.onFieldSubmitted,
                    validator: widget.validator,
                    keyboardType: widget.keyboardType,
                    textCapitalization: widget.textCapitalization,
                    textInputAction: widget.textInputAction,
                    isPasswordMode: widget.isPasswordMode,
                    passwordVisibility: _passwordVisibility,
                    autocorrect: widget.autocorrect,
                    enabled: widget.enabled,
                    autofocus: widget.autofocus,
                    inputFormatters: widget.inputFormatters,
                    scrollPadding: widget.scrollPadding,
                    autofillHints: widget.autofillHints,
                    inputBorderColor: getBorderColor(context, widget.composantState.state),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DsfrInputLabel extends StatelessWidget {
  final String labelText;
  final DsfrComposantState composantState;
  final bool enabled;

  const _DsfrInputLabel({
    required this.labelText,
    required this.composantState,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return ExcludeSemantics(
      child: Text(
        labelText,
        style: DsfrTextStyle.bodyMd(color: _getLabelColor(context)),
      ),
    );
  }

  Color _getLabelColor(BuildContext context) {
    if (!enabled) {
      return DsfrColorDecisions.textDisabledGrey(context);
    } else {
      return getTextColor(context, composantState.state, defaultColor: DsfrColorDecisions.textLabelGrey(context));
    }
  }
}

class _DsfrInputPasswordLabel extends StatelessWidget {
  final String inputLabel;
  final String displayPasswordLabel;
  final DsfrComposantState composantState;
  final bool enabled;
  final bool passwordVisibility;
  final ValueChanged<bool>? handlePasswordVisibility;

  const _DsfrInputPasswordLabel({
    required this.inputLabel,
    required this.displayPasswordLabel,
    required this.composantState,
    required this.passwordVisibility,
    required this.handlePasswordVisibility,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(child: _DsfrInputLabel(labelText: inputLabel, composantState: composantState, enabled: enabled)),
        Spacer(),
        FocusTraversalOrder(
          order: const NumericFocusOrder(2),
          child: Flexible(
            child: DsfrCheckbox.sm(
              label: displayPasswordLabel,
              value: passwordVisibility,
              onChanged: handlePasswordVisibility,
              enabled: enabled,
            ),
          ),
        ),
      ],
    );
  }
}
