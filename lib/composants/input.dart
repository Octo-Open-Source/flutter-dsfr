// ignore_for_file: prefer-correct-callback-field-name

import 'package:flutter_dsfr/composants/checkbox.dart';
import 'package:flutter_dsfr/composants/input_headless.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    this.width,
    this.labelStyle = const DsfrTextStyle.bodyMd(),
    this.labelColor,
    this.hintStyle = const DsfrTextStyle.bodyXs(),
    this.hintColor,
    this.textAlign = TextAlign.start,
    this.autofocus = false,
    this.isPasswordMode = false,
    this.autocorrect,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.inputFormatters,
    this.scrollPadding = const EdgeInsets.all(20),
    this.autofillHints,
  });

  final String label;
  final String? hintText;
  final String? suffixText;
  final TextEditingController? controller;
  final String? initialValue;
  final ValueChanged<String> onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;

  final double? width;
  final TextStyle labelStyle;
  final Color? labelColor;
  final TextStyle hintStyle;
  final Color? hintColor;
  final TextAlign textAlign;
  final bool autofocus;
  final bool isPasswordMode;
  final bool? autocorrect;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsets scrollPadding;
  final Iterable<String>? autofillHints;

  @override
  State<DsfrInput> createState() => _DsfrInputState();
}

class _DsfrInputState extends State<DsfrInput> {
  bool _passwordVisibility = false;

  void _handlePasswordVisibility(final bool value) =>
      setState(() => _passwordVisibility = value);

  @override
  Widget build(final context) {
    final labelText = widget.label;
    Widget label = ExcludeSemantics(
      child: Text(
        labelText,
        style: widget.labelStyle.copyWith(color: widget.labelColor ?? DsfrColorDecisions.textLabelGrey(context)),
      ),
    );

    if (widget.isPasswordMode) {
      label = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: label),
          if (widget.isPasswordMode)
            FocusTraversalOrder(
              order: const NumericFocusOrder(2),
              child: DsfrCheckbox.sm(
                label: 'Afficher',
                value: _passwordVisibility,
                onChanged: _handlePasswordVisibility,
              ),
            ),
        ],
      );
    }

    return FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Semantics(
        textField: true,
        label: labelText,
        hint: widget.hintText,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            label,
            if (widget.hintText != null) ...[
              const SizedBox(height: DsfrSpacings.s1v),
              ExcludeSemantics(
                child: Text(
                  widget.hintText!,
                  style: widget.hintStyle.copyWith(color: widget.hintColor ?? DsfrColorDecisions.textMentionGrey(context)),
                ),
              ),
            ],
            const SizedBox(height: DsfrSpacings.s1w),
            FocusTraversalOrder(
              order: const NumericFocusOrder(1),
              child: Semantics(
                identifier: labelText,
                child: DsfrInputHeadless(
                  key: ValueKey(labelText),
                  initialValue: widget.initialValue,
                  controller: widget.controller,
                  suffixText: widget.suffixText,
                  onChanged: widget.onChanged,
                  onFieldSubmitted: widget.onFieldSubmitted,
                  validator: widget.validator,
                  keyboardType: widget.keyboardType,
                  textCapitalization: widget.textCapitalization,
                  textInputAction: widget.textInputAction,
                  width: widget.width,
                  isPasswordMode: widget.isPasswordMode,
                  passwordVisibility: _passwordVisibility,
                  autocorrect: widget.autocorrect,
                  textAlign: widget.textAlign,
                  autofocus: widget.autofocus,
                  inputFormatters: widget.inputFormatters,
                  scrollPadding: widget.scrollPadding,
                  autofillHints: widget.autofillHints,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
