import 'package:flutter_dsfr/composants/buttons/button_size.dart';
import 'package:flutter_dsfr/composants/buttons/raw_button.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';

import 'button_icon_location.dart';
import 'button_variant.dart';

export 'button_icon_location.dart';
export 'button_size.dart';
export 'button_variant.dart';
export 'raw_button.dart';

class DsfrButton extends StatelessWidget {
  const DsfrButton({
    super.key,
    this.label = "",
    this.icon,
    this.iconLocation = DsfrButtonIconLocation.left,
    this.iconColor,
    required this.variant,
    this.foregroundColor,
    required this.size,
    this.onPressed,
  });

  final IconData? icon;
  final String label;
  final DsfrButtonIconLocation iconLocation;
  final Color? iconColor;
  final DsfrButtonVariant variant;
  final Color? foregroundColor;
  final DsfrButtonSize size;
  final VoidCallback? onPressed;

  double _getIconSize(final DsfrButtonSize size) {
    switch (size) {
      case DsfrButtonSize.lg:
        return DsfrSpacings.s3w;
      case DsfrButtonSize.md:
      case DsfrButtonSize.sm:
        return DsfrSpacings.s2w;
    }
  }

  @override
  Widget build(final context) {
    Widget child = Text(label);
    if (icon != null) {
      final buttonIcon = Icon(icon, size: _getIconSize(size));
      var children = <Widget>[
        buttonIcon,
        if (label != "") Flexible(child: child),
      ];
      if (iconLocation == DsfrButtonIconLocation.right) {
        children = children.reversed.toList();
      }

      child = Row(mainAxisSize: MainAxisSize.min, spacing: DsfrSpacings.s1w, children: children);
    }

    if (iconColor != null) {
      child = IconTheme(data: IconThemeData(color: iconColor), child: child);
    }

    return DsfrRawButton(
      variant: variant,
      size: size,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      child: Center(child: child),
    );
  }
}
