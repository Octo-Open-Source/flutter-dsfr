import 'package:flutter_dsfr/atoms/focus_widget.dart';
import 'package:flutter_dsfr/composants/checkbox_icon.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DsfrCheckbox extends StatelessWidget {
  const DsfrCheckbox._({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    required this.padding,
    this.focusNode,
  }) : isEnabled = onChanged != null;

  const DsfrCheckbox.sm({
    required final String label,
    required final bool value,
    required final ValueChanged<bool>? onChanged,
    final FocusNode? focusNode,
    final Key? key,
  }) : this._(
          key: key,
          label: label,
          value: value,
          onChanged: onChanged,
          padding: EdgeInsets.zero,
          focusNode: focusNode,
        );

  const DsfrCheckbox.md({
    required final String label,
    required final bool value,
    final ValueChanged<bool>? onChanged,
    final FocusNode? focusNode,
    final Key? key,
  }) : this._(
          key: key,
          label: label,
          value: value,
          onChanged: onChanged,
          padding: const EdgeInsets.all(DsfrSpacings.s1v),
          focusNode: focusNode,
        );

  final String label;
  final bool value;
  final ValueChanged<bool>? onChanged;
  final EdgeInsets padding;
  final FocusNode? focusNode;
  final bool isEnabled;

  @override
  Widget build(final context) => Semantics(
        enabled: isEnabled,
        checked: value,
        label: label,
        child: ExcludeSemantics(
          child: GestureDetector(
            onTap: onChanged == null ? null : () => onChanged?.call(!value),
            behavior: HitTestBehavior.opaque,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Focus(
                  focusNode: focusNode,
                  onKeyEvent: (final node, final event) {
                    if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.space) {
                      onChanged?.call(!value);
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  canRequestFocus: isEnabled,
                  child: Builder(
                    builder: (final context) {
                      final isFocused = Focus.of(context).hasFocus;

                      return DsfrFocusWidget(
                        isFocused: isFocused,
                        borderRadius: const BorderRadius.all(Radius.circular(4)),
                        child: DsfrCheckboxIcon(value: value, padding: padding),
                      );
                    },
                  ),
                ),
                const SizedBox(width: DsfrSpacings.s1w),
                Flexible(
                  child: Text(
                    label,
                    style: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textLabelGrey(context)),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
