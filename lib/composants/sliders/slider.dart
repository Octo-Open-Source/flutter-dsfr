import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/composants/sliders/sliders_utils.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

class DsfrSlider extends StatelessWidget {
  final String label;
  final String? description;
  final double value;
  final double min;
  final double max;
  final ValueChanged<double>? onChanged;
  final ValueChanged<double>? onChangedStart;
  final ValueChanged<double>? onChangedEnd;
  final DsfrComponentSize size;
  final bool enabled;
  final bool showMinMaxLabels;
  final int? divisions;
  final DsfrComposantState composantState;
  final String Function(double)? valueLabelBuilder;

  const DsfrSlider._({
    super.key,
    required this.label,
    required this.value,
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

  const DsfrSlider.sm({
    final Key? key,
    required final String label,
    final String? description,
    required final double value,
    final double min = 0.0,
    final double max = 1.0,
    final int? division,
    final ValueChanged<double>? onChanged,
    final ValueChanged<double>? onChangedStart,
    final ValueChanged<double>? onChangedEnd,
    final String Function(double)? valueLabelBuilder,
    final bool enabled = true,
    final bool showMinMaxLabels = false,
    final DsfrComposantState composantState = const DsfrComposantState.none(),
  }) : this._(
          key: key,
          label: label,
          description: description,
          value: value,
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

  const DsfrSlider.md({
    final Key? key,
    required final String label,
    final String? description,
    required final double value,
    final double min = 0.0,
    final double max = 1.0,
    final int? division,
    final ValueChanged<double>? onChanged,
    final ValueChanged<double>? onChangedStart,
    final ValueChanged<double>? onChangedEnd,
    final String Function(double)? valueLabelBuilder,
    final bool enabled = true,
    final bool showMinMaxLabels = false,
    final DsfrComposantState composantState = const DsfrComposantState.none(),
  }) : this._(
          key: key,
          label: label,
          description: description,
          value: value,
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
        ? getTextColor(context, composantState.state, defaultColor: DsfrColorDecisions.textLabelGrey(context))
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
          _SliderTheme(
            size: size,
            enabled: enabled,
            labelText: (valueLabelBuilder ?? defaultLabelBuilder)(value),
            child: Slider(
              min: min,
              max: max,
              value: value,
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

class _SliderTheme extends StatelessWidget {
  final Widget child;
  final DsfrComponentSize size;
  final bool enabled;
  final String labelText;

  const _SliderTheme({
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
        tickMarkShape: _CustomRoundSliderTickMarkShape(),
        activeTickMarkColor: DsfrColorDecisions.backgroundDefaultGrey(context),
        inactiveTickMarkColor: DsfrColorDecisions.backgroundActiveBlueFrance(context),
        disabledActiveTickMarkColor: DsfrColorDecisions.backgroundDefaultGrey(context),
        disabledInactiveTickMarkColor: DsfrColorDecisions.backgroundDisabledGrey(context),
        thumbColor: DsfrColorDecisions.backgroundDefaultGrey(context),
        trackHeight: getTrackHeight(size),
        thumbShape: _CustomThumbShape(
          context,
          thumbRadius: getTrackHeight(size),
          labelText: labelText,
          enabled: enabled,
        ),
        trackShape: _CustomTrackShape(context),
        padding: EdgeInsets.only(top: 22),
      ),
      child: child,
    );
  }
}

class _CustomThumbShape extends RoundSliderThumbShape {
  final BuildContext context;
  final double thumbRadius;
  final String labelText;
  final bool enabled;

  static const double _labelOffset = 4.0;

  _CustomThumbShape(
    this.context, {
    required this.labelText,
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
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    super.paint(paintingContext, center,
        activationAnimation: activationAnimation,
        enableAnimation: enableAnimation,
        isDiscrete: isDiscrete,
        labelPainter: labelPainter,
        parentBox: parentBox,
        sliderTheme: sliderTheme,
        textDirection: textDirection,
        value: value,
        textScaleFactor: textScaleFactor,
        sizeWithOverflow: sizeWithOverflow);

    final Canvas canvas = paintingContext.canvas;

    // Draw thumb border
    final borderPaint = Paint()
      ..color = enabled
          ? DsfrColorDecisions.backgroundActiveBlueFrance(context)
          : DsfrColorDecisions.borderDisabledGrey(context)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;
    canvas.drawCircle(center, thumbRadius, borderPaint);

    // Draw label above thumb
    final labelSpan = TextSpan(
      text: labelText,
      style: DsfrTextStyle.bodyXs(
        color:
            enabled ? DsfrColorDecisions.textActiveBlueFrance(context) : DsfrColorDecisions.textDisabledGrey(context),
      ),
    );
    final labelTextPainter = TextPainter(
      text: labelSpan,
      textAlign: TextAlign.center,
      textDirection: textDirection,
    );
    labelTextPainter.layout();

    final labelTextCenter = Offset(
      center.dx - (labelTextPainter.width / 2),
      center.dy - thumbRadius - _labelOffset - labelTextPainter.height,
    );

    labelTextPainter.paint(canvas, labelTextCenter);
  }
}

class _CustomTrackShape extends RoundedRectSliderTrackShape {
  final BuildContext context;

  _CustomTrackShape(this.context);

  @override
  void paint(
    PaintingContext paintingContext,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isDiscrete = false,
    bool isEnabled = false,
    double additionalActiveTrackHeight = 2,
  }) {
    super.paint(
      paintingContext,
      offset,
      parentBox: parentBox,
      sliderTheme: sliderTheme,
      enableAnimation: enableAnimation,
      textDirection: textDirection,
      thumbCenter: thumbCenter,
      isDiscrete: isDiscrete,
      isEnabled: isEnabled,
    );

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
  }
}

class _CustomRoundSliderTickMarkShape extends SliderTickMarkShape {
  static const double _activeTickMarkRadius = 2.0;
  static const double _inactiveTickMarkRadius = 1.0;

  const _CustomRoundSliderTickMarkShape();

  @override
  Size getPreferredSize({
    required SliderThemeData sliderTheme,
    required bool isEnabled,
  }) {
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
    required Offset thumbCenter,
    required bool isEnabled,
    required TextDirection textDirection,
  }) {
    bool isActive = switch (textDirection) {
      TextDirection.ltr => center.dx <= thumbCenter.dx,
      TextDirection.rtl => center.dx >= thumbCenter.dx,
    };

    final double tickMarkRadius = isActive ? _activeTickMarkRadius : _inactiveTickMarkRadius;
    final Color? tickMarkColor = switch ((isEnabled, isActive)) {
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
