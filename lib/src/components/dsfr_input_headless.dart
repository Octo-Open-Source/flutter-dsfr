// ignore_for_file: prefer-correct-callback-field-name

import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class DsfrInputHeadless extends StatefulWidget {
  const DsfrInputHeadless({
    super.key,
    this.initialValue,
    this.controller,
    this.suffixIcon,
    this.suffixText,
    this.suffix,
    this.onChanged,
    this.onDateChanged,
    this.onFieldSubmitted,
    this.validator,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.width,
    this.isPasswordMode = false,
    this.passwordVisibility = false,
    this.isDatePicker = false,
    this.firstDate,
    this.lastDate,
    this.initialDate,
    this.locale,
    this.autocorrect,
    this.fillColor,
    this.radius = DsfrSpacings.s1v,
    this.maxLines = 1,
    this.minLines,
    this.enabled = true,
    this.autofocus = false,
    this.inputColor,
    this.inputBorderColor,
    this.inputConstraints = const BoxConstraints(maxHeight: DsfrSpacings.s6w),
    this.focusThickness = DsfrSpacings.s0v5,
    this.focusPadding = const EdgeInsets.all(DsfrSpacings.s0v5),
    this.inputFormatters,
    this.scrollPadding = const EdgeInsets.all(20),
    this.autofillHints,
    this.maxLength,
    this.textAlign = TextAlign.start,
    this.focusNode,
  });

  final String? initialValue;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String? suffixText;
  final Widget? suffix;
  final ValueChanged<String>? onChanged;
  final ValueChanged<DateTime>? onDateChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final double? width;
  final Color? inputColor;
  final bool enabled;
  final bool autofocus;
  final bool isPasswordMode;
  final bool isDatePicker;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? initialDate;
  final Locale? locale;
  final bool passwordVisibility;
  final bool? autocorrect;
  final int maxLines;
  final int? minLines;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final Color? inputBorderColor;
  final BoxConstraints? inputConstraints;
  final Color? fillColor;
  final double radius;
  final double focusThickness;
  final EdgeInsetsGeometry focusPadding;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsets scrollPadding;
  final Iterable<String>? autofillHints;
  final int? maxLength;
  final TextAlign textAlign;
  final FocusNode? focusNode;

  @override
  State<DsfrInputHeadless> createState() => _DsfrInputHeadlessState();
}

class _DsfrInputHeadlessState extends State<DsfrInputHeadless> {
  bool _isFocused = false;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_listener);
  }

  void _listener() {
    setState(() => _isFocused = _focusNode.hasFocus);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      locale: widget.locale,
      context: context,
      initialDate: widget.initialDate ?? DateTime.now(),
      firstDate: widget.firstDate ?? DateTime.now().subtract(const Duration(days: 365)),
      lastDate: widget.lastDate ?? DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      setState(() {
        widget.controller?.text = DateFormat('dd/MM/yyyy').format(picked);
        if (widget.onDateChanged != null) widget.onDateChanged!(picked);
      });
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_listener);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(final context) {
    final underlineInputBorder = widget.enabled
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: widget.inputBorderColor ?? DsfrColorDecisions.borderPlainGrey(context),
              width: DsfrSpacings.s0v5,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(widget.radius)),
          )
        : InputBorder.none;

    return DsfrFocusWidget(
      isFocused: _isFocused,
      borderRadius: BorderRadius.vertical(top: Radius.circular(widget.radius)),
      child: SizedBox(
        width: widget.width,
        child: TextFormField(
          maxLength: widget.maxLength,
          controller: widget.controller,
          initialValue: widget.initialValue,
          focusNode: _focusNode,
          decoration: InputDecoration(
            suffixIcon: widget.isDatePicker ? Icon(DsfrIcons.businessCalendarLine, size: 16) : widget.suffixIcon,
            suffixText: widget.suffixText,
            suffix: widget.suffix,
            suffixStyle: widget.enabled
                ? DsfrTextStyle.bodyMd(color: widget.inputColor ?? DsfrColorDecisions.textDefaultGrey(context))
                : DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDisabledGrey(context)),
            contentPadding: widget.isDatePicker ? EdgeInsets.symmetric(vertical: 15, horizontal: 10) : null,
            filled: true,
            fillColor: widget.enabled
                ? widget.fillColor ?? DsfrColorDecisions.backgroundContrastGrey(context)
                : DsfrColorDecisions.backgroundDisabledGrey(context),
            focusedBorder: underlineInputBorder,
            enabledBorder: underlineInputBorder,
            border: underlineInputBorder,
            constraints: widget.maxLines > 1 ? null : widget.inputConstraints,
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
          readOnly: widget.isDatePicker ? true : false,
          onTapOutside: (final event) => FocusManager.instance.primaryFocus?.unfocus(),
          onFieldSubmitted: widget.onFieldSubmitted,
          validator: widget.validator,
          inputFormatters: widget.inputFormatters,
          enabled: widget.enabled,
          scrollPadding: widget.scrollPadding,
          autofillHints: widget.autofillHints,
          onTap: widget.isDatePicker
              ? () {
                  _selectDate(context);
                }
              : null,
        ),
      ),
    );
  }
}
