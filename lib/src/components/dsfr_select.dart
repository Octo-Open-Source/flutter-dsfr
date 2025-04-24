import 'package:flutter_dsfr/src/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_text_style.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_icons.g.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_spacings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/helpers/color_utils.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';

class DsfrSelect<T> extends StatelessWidget {
  const DsfrSelect({
    super.key,
    required this.label,
    this.hint,
    required this.dropdownMenuEntries,
    required this.onSelected,
    this.controller,
    this.initialSelection,
    this.componentState = const DsfrComponentState.none(),
  });

  final String label;
  final String? hint;
  final List<DropdownMenuEntry<T>> dropdownMenuEntries;
  final ValueChanged<T?> onSelected;
  final TextEditingController? controller;
  final T? initialSelection;
  final DsfrComponentState componentState;

  @override
  Widget build(final context) {
    final enabled = dropdownMenuEntries.isNotEmpty;

    final underlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(
        color: enabled
            ? getBorderColor(context, componentState.state)
            : DsfrColorDecisions.backgroundContrastGrey(context),
        width: 2,
      ),
      borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
    );

    return DsfrFormState(
      componentState: componentState,
      child: Semantics(
        textField: true,
        label: label,
        child: _Label(
          label: label,
          hint: hint,
          enabled: enabled,
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
            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: DsfrColorDecisions.backgroundContrastGrey(context),
              focusedBorder: underlineInputBorder,
              enabledBorder: underlineInputBorder,
              border: underlineInputBorder,
              constraints: const BoxConstraints(maxHeight: 48),
            ),
            controller: controller,
            initialSelection: initialSelection,
            onSelected: onSelected,
            expandedInsets: EdgeInsets.zero,
            dropdownMenuEntries: dropdownMenuEntries,
          ),
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
    this.enabled = true,
  });

  final String label;
  final String? hint;
  final Widget child;
  final bool enabled;

  @override
  Widget build(final context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ExcludeSemantics(
            child: Text(
              label,
              style: DsfrTextStyle.bodyMd(
                color:
                    enabled ? DsfrColorDecisions.textLabelGrey(context) : DsfrColorDecisions.textDisabledGrey(context),
              ),
            ),
          ),
          if (hint != null) ...[
            const SizedBox(height: DsfrSpacings.s1v),
            Text(hint!, style: DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textMentionGrey(context))),
          ],
          const SizedBox(height: 10),
          child,
        ],
      );
}
