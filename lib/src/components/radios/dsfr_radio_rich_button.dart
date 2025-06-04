import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/atoms/dsfr_focus_widget.dart';
import 'package:flutter_dsfr/src/components/radios/dsfr_radio_icon.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_spacings.g.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_text_style.dart';
import 'package:flutter_dsfr/src/helpers/color_utils.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';

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
    required this.size,
    this.isExpanded = false,
  }) : assert(size != DsfrComponentSize.lg);

  final String title;
  final String? description;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final bool enabled;
  final DsfrComponentStateEnum state;
  final Widget? trailingIcon;
  final DsfrComponentSize size;
  final bool isExpanded;

  @override
  State<DsfrRadioRichButton<T>> createState() => _DsfrRadioRichButtonState<T>();
}

class _DsfrRadioRichButtonState<T> extends State<DsfrRadioRichButton<T>>
    with MaterialStateMixin<DsfrRadioRichButton<T>> {
  @override
  Widget build(final context) {
    final mainAxisSize = widget.isExpanded ? MainAxisSize.max : MainAxisSize.min;

    return DsfrFocusWidget(
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
            decoration: BoxDecoration(border: Border.fromBorderSide(BorderSide(color: getBorderColor(context)))),
            child: IntrinsicHeight(
              child: Row(
                mainAxisSize: mainAxisSize,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(DsfrSpacings.s2w),
                      child: Row(
                        mainAxisSize: mainAxisSize,
                        spacing: DsfrSpacings.s1w,
                        children: [
                          DsfrRadioIcon(
                            key: ValueKey(widget.title),
                            value: widget.value,
                            groupValue: widget.groupValue,
                            enabled: widget.enabled,
                            state: widget.state,
                            size: _getIconSize(),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: DsfrSpacings.s1v,
                              children: [
                                Text(widget.title, style: DsfrTextStyle.bodyMd(color: getLabelColor(context))),
                                if (widget.description != null)
                                  Text(
                                    widget.description!,
                                    style: DsfrTextStyle.bodyXs(color: getDescriptionColor(context)),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (widget.trailingIcon != null) ...[
                    Row(
                      children: [
                        VerticalDivider(width: 0, indent: DsfrSpacings.s1v, endIndent: DsfrSpacings.s1v),
                        SizedBox(width: 88, height: 88, child: Center(child: widget.trailingIcon!)),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

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

  double _getIconSize() {
    return switch (widget.size) {
      DsfrComponentSize.md => 24.0,
      DsfrComponentSize.sm => 16.0,
      DsfrComponentSize.lg => throw UnimplementedError('Size ${widget.size} is not implemented'),
    };
  }
}
