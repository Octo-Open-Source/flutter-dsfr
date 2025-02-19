// ignore_for_file: prefer-correct-callback-field-name
import 'package:flutter_dsfr/fondamentaux/colors.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';

class DsfrInputHeadless extends StatefulWidget {
  const DsfrInputHeadless({
    super.key,
    this.initialValue,
    this.controller,
    this.suffixText,
    required this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.width,
    this.isPasswordMode = false,
    this.passwordVisibility = false,
    this.autocorrect,
    this.fillColor,
    this.radius = DsfrSpacings.s1v,
    this.maxLines = 1,
    this.minLines = 1,
    this.textAlign = TextAlign.start,
    this.enabled = true,
    this.autofocus = false,
    this.inputColor,
    this.inputBorderColor,
    this.inputBorderWidth = DsfrSpacings.s0v5,
    this.inputConstraints = const BoxConstraints(maxHeight: DsfrSpacings.s6w),
    this.focusColor = DsfrColors.focus525,
    this.focusThickness = DsfrSpacings.s0v5,
    this.focusPadding = const EdgeInsets.all(DsfrSpacings.s0v5),
    this.inputFormatters,
    this.scrollPadding = const EdgeInsets.all(20),
    this.autofillHints,
  });

  final String? initialValue;
  final TextEditingController? controller;
  final String? suffixText;
  final ValueChanged<String> onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final double? width;
  final Color? inputColor;
  final TextAlign textAlign;
  final bool enabled;
  final bool autofocus;
  final bool isPasswordMode;
  final bool passwordVisibility;
  final bool? autocorrect;
  final int? maxLines;
  final int? minLines;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final Color? inputBorderColor;
  final double inputBorderWidth;
  final BoxConstraints? inputConstraints;
  final Color? fillColor;
  final double radius;
  final Color focusColor;
  final double focusThickness;
  final EdgeInsetsGeometry focusPadding;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsets scrollPadding;
  final Iterable<String>? autofillHints;

  @override
  State<DsfrInputHeadless> createState() => _DsfrInputHeadlessState();
}

class _DsfrInputHeadlessState extends State<DsfrInputHeadless> {
  bool _isFocused = false;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_listener);
  }

  void _listener() {
    setState(() => _isFocused = _focusNode.hasFocus);
  }

  @override
  void dispose() {
    _focusNode
      ..removeListener(_listener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(final context) {
    final underlineInputBorder = widget.enabled
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: widget.inputBorderColor ?? DsfrColorDecisions.borderPlainGrey(context),
              width: widget.inputBorderWidth,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(widget.radius)),
          )
        : InputBorder.none;

    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            color: _isFocused ? widget.focusColor : Colors.transparent,
            width: widget.focusThickness,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(widget.radius + 2),
        ),
      ),
      child: Padding(
        padding: widget.focusPadding
            .add(EdgeInsets.only(bottom: widget.inputBorderWidth)),
        child: SizedBox(
          width: widget.width,
          child: TextFormField(
            controller: widget.controller,
            initialValue: widget.initialValue,
            focusNode: _focusNode,
            decoration: InputDecoration(
              suffixText: widget.suffixText,
              suffixStyle: widget.enabled
                  ? DsfrTextStyle.bodyMd(color: widget.inputColor ?? DsfrColorDecisions.textDefaultGrey(context))
                  : DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDisabledGrey(context)),
              filled: true,
              fillColor: widget.enabled
                  ? widget.fillColor ?? DsfrColorDecisions.backgroundContrastGrey(context)
                  : DsfrColorDecisions.backgroundDisabledGrey(context),
              focusedBorder: underlineInputBorder,
              enabledBorder: underlineInputBorder,
              border: underlineInputBorder,
              constraints: widget.inputConstraints,
            ),
            keyboardType: widget.keyboardType,
            textCapitalization: widget.textCapitalization,
            textInputAction: widget.textInputAction,
            style: widget.enabled
                ? DsfrTextStyle.bodyMd(color: widget.inputColor ?? DsfrColorDecisions.textDefaultGrey(context))
                : DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDisabledGrey(context)),
            textAlign: widget.textAlign,
            autofocus: widget.autofocus,
            obscureText: widget.isPasswordMode && !widget.passwordVisibility,
            autocorrect: widget.autocorrect ?? !widget.isPasswordMode,
            enableSuggestions: !widget.isPasswordMode,
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            onChanged: widget.onChanged,
            onTapOutside: (final event) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            onFieldSubmitted: widget.onFieldSubmitted,
            validator: widget.validator,
            inputFormatters: widget.inputFormatters,
            enabled: widget.enabled,
            scrollPadding: widget.scrollPadding,
            autofillHints: widget.autofillHints,
          ),
        ),
      ),
    );
  }
}
