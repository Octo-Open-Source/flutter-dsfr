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
    this.description,
    required this.onChanged,
    required this.padding,
    this.focusNode,
    this.enabled = true,
  });

  const DsfrCheckbox.sm({
    required final String label,
    required final bool value,
    final String? description,
    required final ValueChanged<bool>? onChanged,
    final FocusNode? focusNode,
    final Key? key,
    final enabled = true,
  }) : this._(
          key: key,
          label: label,
          value: value,
          description: description,
          onChanged: onChanged,
          padding: EdgeInsets.zero,
          focusNode: focusNode,
          enabled: enabled,
        );

  const DsfrCheckbox.md({
    required final String label,
    required final bool value,
    final String? description,
    final ValueChanged<bool>? onChanged,
    final FocusNode? focusNode,
    final Key? key,
    enabled = true,
  }) : this._(
          key: key,
          label: label,
          value: value,
          description: description,
          onChanged: onChanged,
          padding: const EdgeInsets.all(DsfrSpacings.s1v),
          focusNode: focusNode,
          enabled: enabled,
        );

  final String label;
  final bool value;
  final String? description;
  final ValueChanged<bool>? onChanged;
  final EdgeInsets padding;
  final FocusNode? focusNode;
  final bool enabled;

  @override
  Widget build(final context) => Semantics(
        enabled: enabled,
        checked: value,
        label: label,
        hint: description,
        child: ExcludeSemantics(
          child: GestureDetector(
            onTap: (!enabled || onChanged == null) ? null : () => onChanged?.call(!value),
            behavior: HitTestBehavior.opaque,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  canRequestFocus: enabled,
                  child: Builder(
                    builder: (final context) {
                      final isFocused = Focus.of(context).hasFocus;

                      return DsfrFocusWidget(
                        isFocused: isFocused,
                        borderRadius: const BorderRadius.all(Radius.circular(4)),
                        child: DsfrCheckboxIcon(value: value, padding: padding, enabled: enabled),
                      );
                    },
                  ),
                ),
                const SizedBox(width: DsfrSpacings.s1w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text(
                        label,
                        style: DsfrTextStyle.bodyMd(
                          color: enabled
                              ? DsfrColorDecisions.textLabelGrey(context)
                              : DsfrColorDecisions.textDisabledGrey(context),
                        ),
                      ),
                    if (description != null) ...[
                      Text(
                        description!,
                        style: enabled
                            ? DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textMentionGrey(context))
                            : DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textDisabledGrey(context))
                      ),
                    ],
                  ],
                )
              ],
            ),
          ),
        ),
      );
}
