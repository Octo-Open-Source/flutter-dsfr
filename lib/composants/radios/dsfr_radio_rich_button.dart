import 'package:flutter_dsfr/atoms/focus_widget.dart';
import 'package:flutter_dsfr/composants/radios/radio_icon.dart';
import 'package:flutter_dsfr/fondamentaux/colors.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';

class DsfrRadioRichButton<T> extends StatefulWidget {
  const DsfrRadioRichButton({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.backgroundColor,
  });

  final String title;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final Color? backgroundColor;

  @override
  State<DsfrRadioRichButton<T>> createState() => _DsfrRadioRichButtonState<T>();
}

class _DsfrRadioRichButtonState<T> extends State<DsfrRadioRichButton<T>>
    with MaterialStateMixin<DsfrRadioRichButton<T>> {
  @override
  Widget build(final context) => DsfrFocusWidget(
        isFocused: isFocused,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.onChanged == null
                ? null
                : () => widget.onChanged!(widget.value),
            onHighlightChanged: updateMaterialState(WidgetState.pressed),
            onHover: updateMaterialState(WidgetState.hovered),
            focusColor: Colors.transparent,
            canRequestFocus: widget.onChanged != null,
            onFocusChange: updateMaterialState(WidgetState.focused),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                border: Border.fromBorderSide(
                  BorderSide(
                    color: widget.groupValue == widget.value
                        ? DsfrColors.blueFranceSun113
                        : DsfrColors.grey900,
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
                    ),
                    const SizedBox(width: DsfrSpacings.s1w),
                    Flexible(
                      child: Text(
                        widget.title,
                        style: const DsfrTextStyle.bodyMd(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
