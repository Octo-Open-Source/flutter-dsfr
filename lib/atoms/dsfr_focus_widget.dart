import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_color_decisions_extension.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_spacings.g.dart';

class DsfrFocusWidget extends StatelessWidget {
  const DsfrFocusWidget({
    super.key,
    required this.isFocused,
    this.borderRadius,
    required this.child,
  });

  final bool isFocused;
  final BorderRadiusGeometry? borderRadius;
  final Widget child;

  @override
  Widget build(final BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          border: isFocused
              ? Border.fromBorderSide(
                  BorderSide(
                    color: DsfrColorDecisionsExtension.focus525(context),
                    width: DsfrSpacings.s0v5,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                )
              : null,
          borderRadius: borderRadius?.add(const BorderRadius.all(Radius.circular(DsfrSpacings.s0v5))),
        ),
        child: Padding(
          padding: const EdgeInsets.all(DsfrSpacings.s0v5),
          child: child,
        ),
      );
}
