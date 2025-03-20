import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/composants/sliders/sliders_utils.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

class DsfrRangeSlider extends StatelessWidget {
  final String label;
  final String? description;
  final RangeValues values;
  final double min;
  final double max;
  final ValueChanged<RangeValues>? onChanged;
  final ValueChanged<RangeValues>? onChangedStart;
  final ValueChanged<RangeValues>? onChangedEnd;
  final DsfrComponentSize size;
  final bool enabled;
  final bool showMinMaxLabels;
  final int? divisions;
  final DsfrComposantState composantState;
  final String Function(double)? valueLabelBuilder;

  const DsfrRangeSlider._({
    super.key,
    required this.label,
    required this.values,
    this.description,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    required this.size,
    this.enabled = true,
    this.onChanged,
    this.onChangedStart,
    this.onChangedEnd,
    this.valueLabelBuilder,
    this.composantState = const DsfrComposantState.none(),
    this.showMinMaxLabels = false,
  });

  const DsfrRangeSlider.sm({
    final Key? key,
    required final String label,
    final String? description,
    required final RangeValues values,
    final double min = 0.0,
    final double max = 1.0,
    final int? division,
    final ValueChanged<RangeValues>? onChanged,
    final ValueChanged<RangeValues>? onChangedStart,
    final ValueChanged<RangeValues>? onChangedEnd,
    final String Function(double)? valueLabelBuilder,
    final bool enabled = true,
    final bool showMinMaxLabels = false,
    final DsfrComposantState composantState = const DsfrComposantState.none(),
  }) : this._(
          key: key,
          label: label,
          description: description,
          values: values,
          min: min,
          max: max,
          divisions: division,
          onChanged: onChanged,
          onChangedStart: onChangedStart,
          onChangedEnd: onChangedEnd,
          size: DsfrComponentSize.sm,
          enabled: enabled,
          valueLabelBuilder: valueLabelBuilder,
          composantState: composantState,
          showMinMaxLabels: showMinMaxLabels,
        );

  const DsfrRangeSlider.md({
    final Key? key,
    required final String label,
    final String? description,
    required final RangeValues values,
    final double min = 0.0,
    final double max = 1.0,
    final int? division,
    final ValueChanged<RangeValues>? onChanged,
    final ValueChanged<RangeValues>? onChangedStart,
    final ValueChanged<RangeValues>? onChangedEnd,
    final String Function(double)? valueLabelBuilder,
    final bool enabled = true,
    final bool showMinMaxLabels = false,
    final DsfrComposantState composantState = const DsfrComposantState.none(),
  }) : this._(
          key: key,
          label: label,
          description: description,
          values: values,
          min: min,
          max: max,
          divisions: division,
          onChanged: onChanged,
          size: DsfrComponentSize.md,
          enabled: enabled,
          valueLabelBuilder: valueLabelBuilder,
          composantState: composantState,
          showMinMaxLabels: showMinMaxLabels,
        );

  @override
  Widget build(BuildContext context) {
    final labelColor = enabled
        ? getTextColor(context, composantState.state,
            defaultColor: DsfrColorDecisions.textLabelGrey(context))
        : DsfrColorDecisions.textDisabledGrey(context);

    return DsfrFormState(
      composantState: composantState,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Text(
            label,
            style: DsfrTextStyle.bodyMd(
              color: labelColor,
            ),
          ),
          if (description != null)
            Text(
              description!,
              style: DsfrTextStyle.bodyXs(
                color: enabled
                    ? DsfrColorDecisions.textMentionGrey(context)
                    : DsfrColorDecisions.textDisabledGrey(context),
              ),
            ),
          _RangeSliderTheme(
            size: size,
            enabled: enabled,
            labelText:
                "${(valueLabelBuilder ?? defaultLabelBuilder)(values.start)} - ${(valueLabelBuilder ?? defaultLabelBuilder)(values.end)}",
            child: RangeSlider(
              min: min,
              max: max,
              values: values,
              divisions: divisions,
              onChanged: enabled ? onChanged : null,
              onChangeStart: enabled ? onChangedStart : null,
              onChangeEnd: enabled ? onChangedEnd : null,
            ),
          ),
          if (showMinMaxLabels)
            ExcludeSemantics(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    Text(
                      (valueLabelBuilder ?? defaultLabelBuilder)(min),
                      style: DsfrTextStyle.bodyXs(
                        color: enabled
                            ? DsfrColorDecisions.textMentionGrey(context)
                            : DsfrColorDecisions.textDisabledGrey(context),
                      ),
                    ),
                    Spacer(),
                    Text(
                      (valueLabelBuilder ?? defaultLabelBuilder)(max),
                      style: DsfrTextStyle.bodyXs(
                        color: enabled
                            ? DsfrColorDecisions.textMentionGrey(context)
                            : DsfrColorDecisions.textDisabledGrey(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _RangeSliderTheme extends StatelessWidget {
  final Widget child;
  final DsfrComponentSize size;
  final bool enabled;
  final String labelText;

  const _RangeSliderTheme({
    required this.child,
    required this.size,
    required this.labelText,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: DsfrColorDecisions.backgroundActiveBlueFrance(context),
        inactiveTrackColor: DsfrColorDecisions.backgroundDefaultGrey(context),
        disabledActiveTrackColor: DsfrColorDecisions.backgroundDisabledGrey(context),
        disabledInactiveTrackColor: DsfrColorDecisions.backgroundDefaultGrey(context),
        disabledThumbColor: size == DsfrComponentSize.sm
            ? DsfrColorDecisions.backgroundDefaultGrey(context)
            : DsfrColorDecisions.backgroundDisabledGrey(context),
        activeTickMarkColor: DsfrColorDecisions.backgroundDefaultGrey(context),
        inactiveTickMarkColor: DsfrColorDecisions.backgroundActiveBlueFrance(context),
        disabledActiveTickMarkColor: DsfrColorDecisions.backgroundDefaultGrey(context),
        disabledInactiveTickMarkColor: DsfrColorDecisions.backgroundDisabledGrey(context),
        thumbColor: DsfrColorDecisions.backgroundDefaultGrey(context),
        trackHeight: getTrackHeight(size),
        rangeThumbShape: _CustomRangeThumbShape(
          context,
          thumbRadius: getTrackHeight(size),
          enabled: enabled,
        ),
        rangeTrackShape: _CustomRangeTrackShape(context: context, labelText: labelText),
        rangeTickMarkShape: _CustomRoundRangeSliderTickMarkShape(enabled: enabled),
      ),
      child: child,
    );
  }
}

class _CustomRangeThumbShape extends RoundRangeSliderThumbShape {
  final BuildContext context;
  final double thumbRadius;
  final bool enabled;

  _CustomRangeThumbShape(
    this.context, {
    required this.thumbRadius,
    required this.enabled,
  }) : super(
          enabledThumbRadius: thumbRadius,
          disabledThumbRadius: thumbRadius,
        );

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext paintingContext,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = false,
    bool? isOnTop,
    required SliderThemeData sliderTheme,
    TextDirection? textDirection,
    Thumb? thumb,
    bool? isPressed,
  }) {
    super.paint(
      paintingContext,
      center,
      activationAnimation: activationAnimation,
      enableAnimation: enableAnimation,
      isDiscrete: isDiscrete,
      isEnabled: isEnabled,
      isOnTop: isOnTop,
      sliderTheme: sliderTheme,
      textDirection: textDirection,
      thumb: thumb,
      isPressed: isPressed,
    );

    final Canvas canvas = paintingContext.canvas;

    // Draw thumb border
    final borderPaint = Paint()
      ..color = enabled
          ? DsfrColorDecisions.backgroundActiveBlueFrance(context)
          : DsfrColorDecisions.borderDisabledGrey(context)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;
    canvas.drawCircle(center, thumbRadius, borderPaint);
  }
}

class _CustomRangeTrackShape extends RoundedRectRangeSliderTrackShape {
  final BuildContext context;
  final String labelText;

  static const double _labelOffset = 8.0;

  _CustomRangeTrackShape({required this.context, required this.labelText});

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    final double trackLeft = offset.dx;
    final double trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2 + _labelOffset;
    final double trackRight = trackLeft + parentBox.size.width;
    final double trackBottom = trackTop + trackHeight;

    return Rect.fromLTRB(
      math.min(trackLeft, trackRight),
      trackTop,
      math.max(trackLeft, trackRight),
      trackBottom,
    );
  }

  @override
  void paint(
    PaintingContext paintingContext,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset startThumbCenter,
    required Offset endThumbCenter,
    bool isEnabled = false,
    bool isDiscrete = false,
    required TextDirection textDirection,
    double additionalActiveTrackHeight = 2,
  }) {
    super.paint(
      paintingContext,
      offset,
      parentBox: parentBox,
      sliderTheme: sliderTheme,
      enableAnimation: enableAnimation,
      startThumbCenter: startThumbCenter,
      endThumbCenter: endThumbCenter,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
      textDirection: textDirection,
      additionalActiveTrackHeight: additionalActiveTrackHeight,
    );

    final Canvas canvas = paintingContext.canvas;

    // Dessin de la bordure
    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final Paint borderPaint = Paint()
      ..color = isEnabled
          ? DsfrColorDecisions.borderActionHighBlueFrance(context)
          : DsfrColorDecisions.borderDisabledGrey(context)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    paintingContext.canvas.drawRRect(
      RRect.fromRectAndRadius(
        trackRect,
        Radius.circular(sliderTheme.trackHeight! / 2),
      ),
      borderPaint,
    );

    // Dessin du label au dessus de l'active track
    final labelSpan = TextSpan(
      text: labelText,
      style: DsfrTextStyle.bodyXs(
        color:
            isEnabled ? DsfrColorDecisions.textActiveBlueFrance(context) : DsfrColorDecisions.textDisabledGrey(context),
      ),
    );
    final labelTextPainter = TextPainter(
      text: labelSpan,
      textAlign: TextAlign.center,
      textDirection: textDirection,
    );
    labelTextPainter.layout();

    final double activeCenterX = (startThumbCenter.dx + endThumbCenter.dx) / 2;
    final labelTextCenter = Offset(
      activeCenterX - (labelTextPainter.width / 2),
      trackRect.top - _labelOffset - labelTextPainter.height,
    );

    labelTextPainter.paint(canvas, labelTextCenter);
  }
}

class _CustomRoundRangeSliderTickMarkShape extends RangeSliderTickMarkShape {
  static const double _activeTickMarkRadius = 2.0;
  static const double _inactiveTickMarkRadius = 1.0;
  final bool enabled;

  const _CustomRoundRangeSliderTickMarkShape({required this.enabled});

  @override
  Size getPreferredSize({required SliderThemeData sliderTheme, bool isEnabled = false}) {
    final double maxRadius = math.max(_activeTickMarkRadius, _inactiveTickMarkRadius);
    return Size.fromRadius(maxRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset startThumbCenter,
    required Offset endThumbCenter,
    bool? isEnabled,
    required TextDirection textDirection,
  }) {
    bool isActive = center.dx >= startThumbCenter.dx && center.dx <= endThumbCenter.dx;

    final double tickMarkRadius = isActive ? _activeTickMarkRadius : _inactiveTickMarkRadius;
    final Color? tickMarkColor = switch ((enabled, isActive)) {
      (false, false) => sliderTheme.disabledInactiveTickMarkColor,
      (false, true) => sliderTheme.disabledActiveTickMarkColor,
      (true, true) => sliderTheme.activeTickMarkColor,
      (true, false) => sliderTheme.inactiveTickMarkColor,
    };

    if (tickMarkColor == null || tickMarkRadius <= 0) return;

    final Canvas canvas = context.canvas;
    final Paint paint = Paint()..color = tickMarkColor;

    canvas.drawCircle(center, tickMarkRadius, paint);
  }
}
