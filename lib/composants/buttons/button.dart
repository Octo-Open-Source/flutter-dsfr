import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/buttons/raw_button.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

import 'package:flutter_dsfr/composants/buttons/button_icon_location.dart';
import 'package:flutter_dsfr/composants/buttons/button_variant.dart';

export 'button_icon_location.dart';
export 'button_variant.dart';
export 'raw_button.dart';

class DsfrButton extends StatelessWidget {
  const DsfrButton({
    super.key,
    this.label,
    this.icon,
    this.iconLocation = DsfrButtonIconLocation.left,
    this.iconColor,
    this.iconSemanticLabel,
    required this.variant,
    this.foregroundColor,
    required this.size,
    this.onPressed,
  });

  final IconData? icon;
  final String? label;
  final DsfrButtonIconLocation iconLocation;
  final Color? iconColor;
  final String? iconSemanticLabel;
  final DsfrButtonVariant variant;
  final Color? foregroundColor;
  final DsfrComponentSize size;
  final VoidCallback? onPressed;

  double _getIconSize(final DsfrComponentSize size) {
    switch (size) {
      case DsfrComponentSize.lg:
        return DsfrSpacings.s3w;
      case DsfrComponentSize.md:
      case DsfrComponentSize.sm:
        return DsfrSpacings.s2w;
    }
  }

  @override
  Widget build(final context) {
    Widget? iconWidget;

    if (icon != null) {
      final baseIcon = Icon(icon, size: _getIconSize(size));
      iconWidget = Semantics(
        excludeSemantics: label != null,
        label: iconSemanticLabel ?? '',
        child: iconColor == null
            ? baseIcon
            : IconTheme(
                data: IconThemeData(color: iconColor),
                child: baseIcon,
              ),
      );
    }

    List<Widget> buttonWidget = <Widget>[
      if (iconWidget != null) iconWidget,
      if (label != null) Flexible(child: Text(label!)),
    ];

    if (iconLocation == DsfrButtonIconLocation.right) {
      buttonWidget = buttonWidget.reversed.toList();
    }

    return DsfrRawButton(
        variant: variant,
        size: size,
        foregroundColor: foregroundColor,
        onPressed: onPressed,
        child: Center(
          child: Row(mainAxisSize: MainAxisSize.min, spacing: DsfrSpacings.s1w, children: buttonWidget),
        ));
  }
}
