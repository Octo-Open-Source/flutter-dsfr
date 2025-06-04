import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';

import 'dart:async';

import 'package:flutter_dsfr/src/fondamentaux/dsfr_text_style.dart';

class DsfrTooltip extends StatefulWidget {
  final String message;
  final Duration? delay;
  final Widget child;
  final bool forceBottom;
  final String? semanticsLabel;
  final double tootipHorizontalPadding;
  final TextAlign messageTextAlign;

  const DsfrTooltip({
    super.key,
    required this.message,
    this.delay,
    required this.child,
    this.forceBottom = false,
    this.semanticsLabel,
    this.tootipHorizontalPadding = 0,
    this.messageTextAlign = TextAlign.start,
  });

  @override
  State<StatefulWidget> createState() => DsfrTooltipState();
}

class DsfrTooltipState extends State<DsfrTooltip> with SingleTickerProviderStateMixin {
  late double? _tooltipTop;
  late double? _tooltipBottom;
  late Alignment _tooltipAlignment;
  late Alignment _transitionAlignment;
  late Alignment _arrowAlignment;
  bool _isInverted = false;
  Timer? _delayTimer;

  final _arrowSize = const Size(6, 4);
  final _tooltipMinimumHeight = 40;

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
      final event = AnnounceSemanticsEvent(widget.message, TextDirection.ltr);
      SystemChannels.accessibility.send(event.toMap());
    }
  }

  void _updatePosition() {
    final Size contextSize = MediaQuery.of(context).size;
    final targetRenderBox = context.findRenderObject() as RenderBox;
    final targetOffset = targetRenderBox.localToGlobal(Offset.zero);
    final targetSize = targetRenderBox.size;
    final tooltipFitsAboveTarget = !widget.forceBottom && targetOffset.dy - _tooltipMinimumHeight >= 0;
    final tooltipFitsBelowTarget =
        widget.forceBottom || targetOffset.dy + targetSize.height + _tooltipMinimumHeight <= contextSize.height;
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
    _isInverted = _tooltipTop != null;
    _tooltipAlignment = Alignment(
      (targetOffset.dx) / (contextSize.width - targetSize.width) * 2 - 1.0,
      _isInverted ? 1.0 : -1.0,
    );
    _transitionAlignment = Alignment(
      (targetOffset.dx + targetSize.width / 2) / contextSize.width * 2 - 1.0,
      _isInverted ? -1.0 : 1.0,
    );
    _arrowAlignment = Alignment(
      (targetOffset.dx + targetSize.width / 2) / (contextSize.width - _arrowSize.width) * 2 - 1.0,
      _isInverted ? 1.0 : -1.0,
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
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
      child: Semantics(
        label: "${widget.semanticsLabel ?? ''}, appuyez deux fois pour afficher le message informatif",
        child: ExcludeSemantics(
          child: GestureDetector(onTap: _toggle, child: widget.child),
        ),
      ),
      overlayChildBuilder: (context) {
        return Positioned(
          top: _tooltipTop,
          bottom: _tooltipBottom,
          child: ScaleTransition(
            alignment: _transitionAlignment,
            scale: _scaleAnimation,
            child: TapRegion(
              onTapOutside: (PointerDownEvent event) {
                _toggle();
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: _isInverted ? Alignment.topCenter : Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: _tooltipAlignment,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: _arrowSize.height,
                          horizontal: widget.tootipHorizontalPadding,
                        ),
                        child: ExcludeSemantics(
                          child: Material(
                            elevation: 6,
                            shadowColor: DsfrColorDecisions.borderDefaultGrey(context).withValues(alpha: 0.4),
                            shape: ContinuousRectangleBorder(
                              side: BorderSide(
                                color: DsfrColorDecisions.borderDefaultGrey(context),
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                              ),
                            ),
                            color: DsfrColorDecisions.backgroundOverlapGrey(context),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                widget.message,
                                textAlign: widget.messageTextAlign,
                                style: DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textDefaultGrey(context)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: _arrowAlignment,
                      child: TooltipArrow(
                        size: _arrowSize,
                        isInverted: _isInverted,
                        color: DsfrColorDecisions.backgroundOverlapGrey(context),
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

class TooltipArrowPainter extends CustomPainter {
  final Size size;
  final Color color;
  final Color borderColor;
  final bool isInverted;

  TooltipArrowPainter({required this.size, required this.color, required this.borderColor, required this.isInverted});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = borderColor
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    final path = Path();

    if (isInverted) {
      path.moveTo(0.0, size.height);
      path.lineTo(size.width / 2, 0.0);
      path.lineTo(size.width, size.height);
      canvas.drawPath(path, borderPaint);
    } else {
      path.moveTo(0.0, 0.0);
      path.lineTo(size.width / 2, size.height);
      path.lineTo(size.width, 0.0);
      canvas.drawPath(path, borderPaint);
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class TooltipArrow extends StatelessWidget {
  final Size size;
  final Color color;
  final bool isInverted;

  const TooltipArrow({super.key, required this.size, required this.color, this.isInverted = false});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-size.width / 2, isInverted ? 1 : -1),
      child: CustomPaint(
        size: size,
        painter: TooltipArrowPainter(
          size: size,
          color: color,
          isInverted: isInverted,
          borderColor: DsfrColorDecisions.borderDefaultGrey(context),
        ),
      ),
    );
  }
}
