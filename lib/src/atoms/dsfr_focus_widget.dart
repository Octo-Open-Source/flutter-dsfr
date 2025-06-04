import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions_extension.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_spacings.g.dart';

class DsfrFocusWidget extends StatelessWidget {
  const DsfrFocusWidget({super.key, required this.isFocused, this.borderRadius, required this.child});

  final bool isFocused;
  final BorderRadiusGeometry? borderRadius;
  final Widget child;

  @override
  Widget build(final BuildContext context) {
    const marginAroundChild = DsfrSpacings.s0v5;

    return Stack(
      fit: StackFit.passthrough,
      clipBehavior: Clip.none,
      children: [
        child,
        if (isFocused)
          Positioned(
            left: -marginAroundChild,
            top: -marginAroundChild,
            right: -marginAroundChild,
            bottom: -marginAroundChild,
            child: IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: DsfrColorDecisionsExtension.focus525(context),
                      width: marginAroundChild,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                  borderRadius: borderRadius?.add(const BorderRadius.all(Radius.circular(marginAroundChild))),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
