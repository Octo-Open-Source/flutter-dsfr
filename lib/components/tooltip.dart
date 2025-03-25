import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';

import 'dart:async';

import 'package:flutter_dsfr/fondamentaux/fonts.dart';

class TooltipPainter extends CustomPainter {
  TooltipPainter({
    required this.arrowOffset,
    required this.arrowSize,
    required this.isReversed,
    required this.backgroundColor,
    required this.arrowSideColor,
  });

  final Offset arrowOffset;
  final Size arrowSize;
  final bool isReversed;
  final Color backgroundColor;
  final Color arrowSideColor;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    final arrowSidePaint = Paint()
      ..color = arrowSideColor
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final shadowPaint = Paint()
      ..color = arrowSideColor
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 8);

    final path = Path();
    final arrowSidePath = Path();
    if (isReversed) {
      path.moveTo(0, arrowSize.height);
      path.lineTo(arrowOffset.dx - (arrowSize.width / 2), arrowSize.height);
      path.lineTo(arrowOffset.dx, 0);
      path.lineTo(arrowOffset.dx + (arrowSize.width / 2), arrowSize.height);
      path.lineTo(size.width, arrowSize.height);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);

      arrowSidePath.moveTo(0, arrowSize.height);
      arrowSidePath.lineTo(arrowOffset.dx - (arrowSize.width / 2), arrowSize.height);
      arrowSidePath.lineTo(arrowOffset.dx, 0);
      arrowSidePath.lineTo(arrowOffset.dx + (arrowSize.width / 2), arrowSize.height);
      arrowSidePath.lineTo(size.width, arrowSize.height);
    } else {
      path.moveTo(0, 0);
      path.lineTo(size.width, 0);
      path.lineTo(size.width, size.height - arrowSize.height);
      path.lineTo(arrowOffset.dx + (arrowSize.width / 2), size.height - arrowSize.height);
      path.lineTo(arrowOffset.dx, size.height);
      path.lineTo(arrowOffset.dx - (arrowSize.width / 2), size.height - arrowSize.height);
      path.lineTo(0, size.height - arrowSize.height);

      arrowSidePath.moveTo(size.width, size.height - arrowSize.height);
      arrowSidePath.lineTo(arrowOffset.dx + (arrowSize.width / 2), size.height - arrowSize.height);
      arrowSidePath.lineTo(arrowOffset.dx, size.height);
      arrowSidePath.lineTo(arrowOffset.dx - (arrowSize.width / 2), size.height - arrowSize.height);
      arrowSidePath.lineTo(0, size.height - arrowSize.height);
    }
    path.close();
    canvas.drawPath(path, shadowPaint);
    canvas.drawPath(path, paint);
    canvas.drawPath(arrowSidePath, arrowSidePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      (oldDelegate is! TooltipPainter) ||
      oldDelegate.isReversed != isReversed ||
      oldDelegate.arrowOffset != arrowOffset;
}

class DsfrTooltip extends StatefulWidget {
  final String message;
  final Duration? delay;
  final Widget child;

  const DsfrTooltip({
    super.key,
    required this.message,
    this.delay,
    required this.child,
  });

  @override
  State<StatefulWidget> createState() => DsfrTooltipState();
}

class DsfrTooltipState extends State<DsfrTooltip> with SingleTickerProviderStateMixin {
  late double? _tooltipTop;
  late double? _tooltipBottom;
  late Alignment _tooltipAlignment;
  late Alignment _transitionAlignment;
  late Offset _arrowOffset;
  bool _isInverted = false;
  Timer? _delayTimer;

  final _arrowSize = const Size(6, 4);
  final _tooltipMinimumHeight = 140;

  final _overlayController = OverlayPortalController();
  late final AnimationController _animationController = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );
  late final Animation<double> _scaleAnimation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.easeOutBack,
  );

  void _toggle() {
    _delayTimer?.cancel();
    _animationController.stop();
    if (_overlayController.isShowing) {
      _animationController.reverse().then((_) {
        _overlayController.hide();
      });
    } else {
      _updatePosition();
      _overlayController.show();
      _animationController.forward();
    }
  }

  void _updatePosition() {
    final Size contextSize = MediaQuery.of(context).size;
    final targetRenderBox = context.findRenderObject() as RenderBox;
    final targetOffset = targetRenderBox.localToGlobal(Offset.zero);
    final targetSize = targetRenderBox.size;
    // Try to position the tooltip above the target,
    // otherwise try to position it below or in the center of the target.
    final tooltipFitsAboveTarget = targetOffset.dy - _tooltipMinimumHeight >= 0;
    final tooltipFitsBelowTarget = targetOffset.dy + targetSize.height + _tooltipMinimumHeight <= contextSize.height;
    _tooltipTop = tooltipFitsAboveTarget
        ? null
        : tooltipFitsBelowTarget
            ? targetOffset.dy + targetSize.height
            : null;
    _tooltipBottom = tooltipFitsAboveTarget
        ? contextSize.height - targetOffset.dy
        : tooltipFitsBelowTarget
            ? null
            : targetOffset.dy + targetSize.height / 2;
    // If the tooltip is below the target, invert the arrow.
    _isInverted = _tooltipTop != null;
    // Align the tooltip horizontally relative to the target.
    _tooltipAlignment = Alignment(
      (targetOffset.dx) / (contextSize.width - targetSize.width) * 2 - 1.0,
      _isInverted ? 1.0 : -1.0,
    );
    // Make the tooltip appear from the target.
    _transitionAlignment = Alignment(
      (targetOffset.dx + targetSize.width / 2) / contextSize.width * 2 - 1.0,
      _isInverted ? -1.0 : 1.0,
    );
    _arrowOffset = Offset((targetOffset.dx + targetSize.width / 2), 0);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // If the tooltip is delayed, start a timer to show it.
      if (widget.delay != null) {
        _delayTimer = Timer(widget.delay!, _toggle);
      }
    });
  }

  @override
  void dispose() {
    _delayTimer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OverlayPortal.targetsRootOverlay(
      controller: _overlayController,
      child: GestureDetector(onTap: _toggle, child: widget.child),
      overlayChildBuilder: (context) {
        return Positioned(
          top: _tooltipTop,
          bottom: _tooltipBottom,
          // Provide a transition alignment to make the tooltip appear from the target.
          child: ScaleTransition(
            alignment: _transitionAlignment,
            scale: _scaleAnimation,
            // TapRegion allows the tooltip to be dismissed by tapping outside of it.
            child: TapRegion(
              onTapOutside: (PointerDownEvent event) {
                _toggle();
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: _tooltipAlignment,
                      child: IntrinsicWidth(
                        child: CustomPaint(
                          painter: TooltipPainter(
                            arrowOffset: _arrowOffset,
                            arrowSize: _arrowSize,
                            isReversed: _isInverted,
                            backgroundColor: DsfrColorDecisions.backgroundOverlapGrey(context),
                            arrowSideColor: DsfrColorDecisions.borderDefaultGrey(context),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 8,
                              right: 8,
                              bottom: _isInverted ? 8 : _arrowSize.height + 8,
                              top: _isInverted ? 8 + _arrowSize.height : 8,
                            ),
                            child: Text(
                              widget.message,
                              style: DsfrTextStyle.bodyXs(
                                color: DsfrColorDecisions.textDefaultGrey(context),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
