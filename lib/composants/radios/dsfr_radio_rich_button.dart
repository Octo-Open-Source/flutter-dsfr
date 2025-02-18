import 'package:flutter_dsfr/atoms/focus_widget.dart';
import 'package:flutter_dsfr/composants/radios/radio_icon.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DsfrRadioRichButton<T> extends StatefulWidget {
  const DsfrRadioRichButton({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.enabled = true,
    this.state = ComposantStateEnum.none,
  });

  final String title;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final bool enabled;
  final ComposantStateEnum state;

  @override
  State<DsfrRadioRichButton<T>> createState() => _DsfrRadioRichButtonState<T>();
}

class _DsfrRadioRichButtonState<T> extends State<DsfrRadioRichButton<T>>
    with MaterialStateMixin<DsfrRadioRichButton<T>> {
  @override
  Widget build(final context) => DsfrFocusWidget(
        isFocused: isFocused,
        child: Material(
          color: DsfrColorDecisions.backgroundTransparent(context),
          child: InkWell(
            onTap: widget.onChanged == null ? null : () => widget.onChanged!(widget.value),
            onHighlightChanged: updateMaterialState(WidgetState.pressed),
            onHover: updateMaterialState(WidgetState.hovered),
            focusColor: DsfrColorDecisions.backgroundTransparent(context),
            canRequestFocus: widget.onChanged != null,
            onFocusChange: updateMaterialState(WidgetState.focused),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.fromBorderSide(
                  BorderSide(
                    color: getBorderColor(context),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(DsfrSpacings.s2w),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RadioIcon(
                      key: ValueKey(widget.title),
                      value: widget.value,
                      groupValue: widget.groupValue,
                      enabled: widget.enabled,
                      state: widget.state,
                    ),
                    const SizedBox(width: DsfrSpacings.s1w),
                    Flexible(
                      child: Text(
                        widget.title,
                        style: DsfrTextStyle.bodyMd(color: getLabelColor(context)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Color getBorderColor(BuildContext context) {
    return widget.groupValue == widget.value
        ? DsfrColorDecisions.borderActiveBlueFrance(context)
        : DsfrColorDecisions.borderDefaultGrey(context);
  }

  Color getLabelColor(BuildContext context) {
    if (!widget.enabled) {
      return DsfrColorDecisions.textDisabledGrey(context);
    } else {
      return getTextColor(context, widget.state, defaultColor: DsfrColorDecisions.textLabelGrey(context));
    }
  }
}
