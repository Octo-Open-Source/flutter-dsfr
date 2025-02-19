import 'package:flutter_dsfr/fondamentaux/colors.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';

class DsfrSelect<T> extends StatelessWidget {
  const DsfrSelect({
    super.key,
    required this.label,
    this.hint,
    required this.dropdownMenuEntries,
    required this.onSelected,
    this.controller,
    this.initialSelection,
    this.labelStyle = const DsfrTextStyle.bodyMd(color: DsfrColors.grey50),
    this.labelColor = DsfrColors.grey50,
    this.labelDisableColor = DsfrColors.grey625,
    this.hintStyle = const DsfrTextStyle.bodyXs(color: DsfrColors.grey50),
    this.hintColor = DsfrColors.grey425,
    this.inputStyle = const DsfrTextStyle.bodyMd(color: DsfrColors.grey50),
    this.inputBorderColor = DsfrColors.grey200,
    this.inputBorderWidth = 2,
    this.inputConstraints = const BoxConstraints(maxHeight: 48),
    this.fillColor = DsfrColors.grey950,
    this.radius = 4,
  });

  final String label;
  final String? hint;
  final List<DropdownMenuEntry<T>> dropdownMenuEntries;
  final ValueChanged<T?> onSelected;
  final TextEditingController? controller;
  final T? initialSelection;

  final TextStyle labelStyle;
  final Color labelColor;
  final Color labelDisableColor;
  final TextStyle hintStyle;
  final Color hintColor;
  final TextStyle inputStyle;
  final Color inputBorderColor;
  final double inputBorderWidth;
  final BoxConstraints inputConstraints;
  final Color fillColor;
  final double radius;

  @override
  Widget build(final context) {
    final underlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(
        color: inputBorderColor,
        width: inputBorderWidth,
      ),
      borderRadius: BorderRadius.vertical(top: Radius.circular(radius)),
    );

    return Semantics(
      textField: true,
      label: label,
      child: _Label(
        label: label,
        hint: hint,
        labelStyle: labelStyle,
        labelColor:
            dropdownMenuEntries.isNotEmpty ? labelColor : labelDisableColor,
        hintStyle: hintStyle,
        hintColor: hintColor,
        child: DropdownMenu(
          enabled: dropdownMenuEntries.isNotEmpty,
          trailingIcon: const Icon(
            DsfrIcons.systemArrowDownSLine,
            size: DsfrSpacings.s2w,
            semanticLabel: 'Cacher les options',
          ),
          selectedTrailingIcon: const Icon(
            DsfrIcons.systemArrowUpSLine,
            size: DsfrSpacings.s2w,
            semanticLabel: 'Afficher les options',
          ),
          textStyle: inputStyle,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: fillColor,
            focusedBorder: underlineInputBorder,
            enabledBorder: underlineInputBorder,
            border: underlineInputBorder,
            constraints: inputConstraints,
          ),
          controller: controller,
          initialSelection: initialSelection,
          onSelected: onSelected,
          expandedInsets: EdgeInsets.zero,
          dropdownMenuEntries: dropdownMenuEntries,
        ),
      ),
    );
  }
}

class _Label extends StatelessWidget {
  const _Label({
    required this.label,
    required this.child,
    this.hint,
    this.labelStyle = const DsfrTextStyle.bodyMd(color: DsfrColors.grey50),
    this.labelColor = DsfrColors.grey50,
    this.hintStyle = const DsfrTextStyle.bodyXs(color: DsfrColors.grey50),
    this.hintColor = DsfrColors.grey425,
  });

  final String label;
  final String? hint;
  final Widget child;

  final TextStyle labelStyle;
  final Color labelColor;
  final TextStyle hintStyle;
  final Color hintColor;

  @override
  Widget build(final context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ExcludeSemantics(
            child: Text(label, style: labelStyle.copyWith(color: labelColor)),
          ),
          if (hint != null) ...[
            const SizedBox(height: DsfrSpacings.s1v),
            Text(hint!, style: hintStyle.copyWith(color: hintColor)),
          ],
          const SizedBox(height: 10),
          child,
        ],
      );
}
