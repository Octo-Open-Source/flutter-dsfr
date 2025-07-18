// ignore_for_file: prefer-correct-callback-field-name

import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/atoms/dsfr_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dsfr/src/helpers/color_utils.dart';

class DsfrInput extends StatefulWidget {
  const DsfrInput({
    super.key,
    required this.label,
    this.hintText,
    this.suffixText,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.enabled = true,
    this.autofocus = false,
    this.isPasswordMode = false,
    this.displayPasswordLabel = 'Afficher',
    this.minLines,
    this.maxLines = 1,
    this.autocorrect,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.inputFormatters,
    this.scrollPadding = const EdgeInsets.all(20),
    this.autofillHints,
    this.componentState = const DsfrComponentState.none(),
    this.textAlign = TextAlign.start,
    this.maxLength,
    this.focusNode,
    this.width,
  });

  final String label;
  final String? hintText;
  final String? suffixText;
  final TextEditingController? controller;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final bool enabled;
  final bool autofocus;
  final bool isPasswordMode;
  final String displayPasswordLabel;
  final int? minLines;
  final int maxLines;
  final bool? autocorrect;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsets scrollPadding;
  final Iterable<String>? autofillHints;
  final DsfrComponentState componentState;
  final TextAlign textAlign;
  final int? maxLength;
  final FocusNode? focusNode;
  final double? width;

  @override
  State<DsfrInput> createState() => _DsfrInputState();
}

class _DsfrInputState extends State<DsfrInput> {
  bool _passwordVisibility = false;

  void _handlePasswordVisibility(final bool value) => setState(() => _passwordVisibility = value);

  @override
  Widget build(final context) {
    return DsfrFormState(
      componentState: widget.componentState,
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
                  componentState: widget.componentState,
                  passwordVisibility: _passwordVisibility,
                  handlePasswordVisibility: _handlePasswordVisibility,
                  enabled: widget.enabled,
                ),
              ] else ...[
                _DsfrInputLabel(
                  labelText: widget.label,
                  componentState: widget.componentState,
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
                    keyboardType: widget.maxLines > 1 ? TextInputType.multiline : widget.keyboardType,
                    textCapitalization: widget.textCapitalization,
                    textInputAction: widget.textInputAction,
                    isPasswordMode: widget.isPasswordMode,
                    minLines: widget.minLines,
                    maxLines: widget.maxLines,
                    passwordVisibility: _passwordVisibility,
                    autocorrect: widget.autocorrect,
                    enabled: widget.enabled,
                    autofocus: widget.autofocus,
                    inputFormatters: widget.inputFormatters,
                    scrollPadding: widget.scrollPadding,
                    autofillHints: widget.autofillHints,
                    inputBorderColor: getBorderColor(context, widget.componentState.state),
                    maxLength: widget.maxLength,
                    textAlign: widget.textAlign,
                    focusNode: widget.focusNode,
                    width: widget.width,
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
  final DsfrComponentState componentState;
  final bool enabled;

  const _DsfrInputLabel({required this.labelText, required this.componentState, required this.enabled});

  @override
  Widget build(BuildContext context) {
    return ExcludeSemantics(
      child: Text(labelText, style: DsfrTextStyle.bodyMd(color: _getLabelColor(context))),
    );
  }

  Color _getLabelColor(BuildContext context) {
    if (!enabled) {
      return DsfrColorDecisions.textDisabledGrey(context);
    } else {
      return getTextColor(context, componentState.state, defaultColor: DsfrColorDecisions.textLabelGrey(context));
    }
  }
}

class _DsfrInputPasswordLabel extends StatelessWidget {
  final String inputLabel;
  final String displayPasswordLabel;
  final DsfrComponentState componentState;
  final bool enabled;
  final bool passwordVisibility;
  final ValueChanged<bool>? handlePasswordVisibility;

  const _DsfrInputPasswordLabel({
    required this.inputLabel,
    required this.displayPasswordLabel,
    required this.componentState,
    required this.passwordVisibility,
    required this.handlePasswordVisibility,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: _DsfrInputLabel(labelText: inputLabel, componentState: componentState, enabled: enabled),
        ),
        Spacer(),
        FocusTraversalOrder(
          order: const NumericFocusOrder(2),
          child: Flexible(
            child: DsfrCheckbox(
              label: displayPasswordLabel,
              value: passwordVisibility,
              onChanged: handlePasswordVisibility,
              enabled: enabled,
              size: DsfrComponentSize.sm,
            ),
          ),
        ),
      ],
    );
  }
}
