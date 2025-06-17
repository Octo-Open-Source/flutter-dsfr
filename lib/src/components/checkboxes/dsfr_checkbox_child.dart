import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/helpers/color_utils.dart';

class DsfrCheckboxChild extends StatelessWidget {
  final String label;
  final String? description;
  final bool value;
  final Function(bool)? onChanged;
  final bool enabled;
  final DsfrComponentStateEnum state;
  final DsfrComponentSize size;
  final FocusNode? focusNode;

  const DsfrCheckboxChild({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.enabled = true,
    this.description,
    this.state = DsfrComponentStateEnum.none,
    required this.size,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      enabled: enabled,
      checked: value,
      label: label,
      hint: description,
      child: ExcludeSemantics(
        child: GestureDetector(
          onTap: (!enabled || onChanged == null) ? null : () => onChanged?.call(!value),
          behavior: HitTestBehavior.opaque,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                      child: DsfrCheckboxIcon(value: value, size: size, enabled: enabled, state: state),
                    );
                  },
                ),
              ),
              const SizedBox(width: DsfrSpacings.s1w),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(label, style: DsfrTextStyle.bodyMdCenter(color: _getLabelColor(context))),
                    if (description != null) ...[
                      Text(
                        description!,
                        style: enabled
                            ? DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textMentionGrey(context))
                            : DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textDisabledGrey(context)),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getLabelColor(BuildContext context) {
    if (!enabled) {
      return DsfrColorDecisions.textDisabledGrey(context);
    } else {
      return getTextColor(context, state, defaultColor: DsfrColorDecisions.textLabelGrey(context));
    }
  }
}
