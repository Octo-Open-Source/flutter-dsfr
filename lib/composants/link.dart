import 'package:flutter_dsfr/atoms/focus_widget.dart';
import 'package:flutter_dsfr/composants/link_icon_position.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

class DsfrLink extends StatefulWidget {
  const DsfrLink({
    super.key,
    required this.label,
    this.iconPosition = DsfrLinkIconPosition.start,
    this.icon,
    this.onTap,
    this.size = DsfrComponentSize.md,
  });

  final String label;
  final IconData? icon;
  final DsfrLinkIconPosition iconPosition;
  final VoidCallback? onTap;
  final DsfrComponentSize size;

  @override
  State<DsfrLink> createState() => _DsfrLinkState();
}

class _DsfrLinkState extends State<DsfrLink> with MaterialStateMixin<DsfrLink> {
  @override
  void initState() {
    super.initState();
    setMaterialState(WidgetState.disabled, widget.onTap == null);
  }

  @override
  void didUpdateWidget(final DsfrLink oldWidget) {
    super.didUpdateWidget(oldWidget);
    setMaterialState(WidgetState.disabled, widget.onTap == null);
  }

  @override
  Widget build(final context) {
    final list = [
      if (widget.icon != null) ...[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Icon(
            widget.icon,
            size: getIconSize(),
            color: getColor(context),
          ),
        ),
        const WidgetSpan(child: SizedBox(width: DsfrSpacings.s1w)),
      ],
      TextSpan(text: widget.label),
    ];

    return Semantics(
      enabled: widget.onTap != null,
      link: true,
      child: Material(
        color: DsfrColorDecisions.backgroundTransparent(context),
        child: InkWell(
          onTap: widget.onTap,
          onHighlightChanged: updateMaterialState(WidgetState.pressed),
          onHover: updateMaterialState(WidgetState.hovered),
          focusColor: DsfrColorDecisions.backgroundTransparentHover(context),
          highlightColor: DsfrColorDecisions.backgroundTransparentActive(context),
          canRequestFocus: widget.onTap != null,
          onFocusChange: updateMaterialState(WidgetState.focused),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: !isFocused && !isDisabled
                  ? Border(
                      bottom: BorderSide(
                        color: getColor(context),
                        width: isPressed || isHovered ? getClickedUnderlineThickness() : 1,
                      ),
                    )
                  : null,
            ),
            child: DsfrFocusWidget(
              isFocused: isFocused,
              child: Text.rich(
                TextSpan(
                  children: widget.iconPosition == DsfrLinkIconPosition.start ? list : list.reversed.toList(),
                ),
                style: getTextStyle(context),
              ),
            ),
          ),
        ),
      ),
    );
  }

  DsfrTextStyle getTextStyle(BuildContext context) {
    var textColor = getColor(context);

    switch (widget.size) {
      case DsfrComponentSize.lg:
        return DsfrTextStyle.bodyLg(color: textColor);
      case DsfrComponentSize.md:
        return DsfrTextStyle.bodyMd(color: textColor);
      case DsfrComponentSize.sm:
        return DsfrTextStyle.bodySm(color: textColor);
    }
  }

  Color getColor(BuildContext context) {
    return widget.onTap == null
        ? DsfrColorDecisions.textDisabledGrey(context)
        : DsfrColorDecisions.textActionHighBlueFrance(context);
  }

  double getIconSize() {
    switch (widget.size) {
      case DsfrComponentSize.lg:
        return 24;
      case DsfrComponentSize.md:
        return 16;
      case DsfrComponentSize.sm:
        return 16;
    }
  }

  double getClickedUnderlineThickness() {
    switch (widget.size) {
      case DsfrComponentSize.lg:
        return 2.25;
      case DsfrComponentSize.md:
        return 2;
      case DsfrComponentSize.sm:
        return 1.75;
    }
  }
}
