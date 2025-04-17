import 'package:flutter_dsfr/atoms/focus_widget.dart';
import 'package:flutter_dsfr/components/radios/dsfr_radio_icon.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_text_style.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_spacings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';

class DsfrRadioRichButton<T> extends StatefulWidget {
  const DsfrRadioRichButton({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.description,
    this.enabled = true,
    this.state = DsfrComponentStateEnum.none,
    this.trailingIcon,
  });

  final String title;
  final String? description;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final bool enabled;
  final DsfrComponentStateEnum state;
  final Widget? trailingIcon;

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
            onTap: (!widget.enabled || widget.onChanged == null) ? null : () => widget.onChanged!(widget.value),
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
              child: IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(DsfrSpacings.s2w),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DsfrRadioIcon(
                            key: ValueKey(widget.title),
                            value: widget.value,
                            groupValue: widget.groupValue,
                            enabled: widget.enabled,
                            state: widget.state,
                            size: 16.0,
                          ),
                          const SizedBox(width: DsfrSpacings.s1w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: DsfrSpacings.s1v,
                            children: [
                              Text(
                                widget.title,
                                style: DsfrTextStyle.bodyMd(color: getLabelColor(context)),
                              ),
                              if (widget.description != null)
                                Text(
                                  widget.description!,
                                  style: DsfrTextStyle.bodyXs(color: getDescriptionColor(context)),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (widget.trailingIcon != null) ...[
                      Spacer(),
                      VerticalDivider(
                        width: 0,
                        indent: DsfrSpacings.s1v,
                        endIndent: DsfrSpacings.s1v,
                      ),
                      SizedBox(
                        width: 88,
                        height: 88,
                        child: Center(
                          child: widget.trailingIcon!,
                        ),
                      )
                    ]
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

  Color getDescriptionColor(BuildContext context) {
    if (!widget.enabled) {
      return DsfrColorDecisions.textDisabledGrey(context);
    } else {
      return getTextColor(context, widget.state, defaultColor: DsfrColorDecisions.textMentionGrey(context));
    }
  }
}
