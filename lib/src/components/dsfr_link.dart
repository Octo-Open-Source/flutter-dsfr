import 'package:flutter_dsfr/src/atoms/dsfr_focus_widget.dart';
import 'package:flutter_dsfr/src/components/dsfr_link_icon_position.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_text_style.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_spacings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';

class DsfrLink extends StatefulWidget {
  const DsfrLink({
    super.key,
    required this.label,
    this.iconPosition = DsfrLinkIconPosition.start,
    this.icon,
    this.onTap,
    this.size = DsfrComponentSize.md,
    this.enabled = true,
  });

  final String label;
  final IconData? icon;
  final DsfrLinkIconPosition iconPosition;
  final VoidCallback? onTap;
  final DsfrComponentSize size;
  final bool enabled;

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
          alignment: PlaceholderAlignment.top,
          child: Padding(
            padding: widget.iconPosition == DsfrLinkIconPosition.start
                ? const EdgeInsets.only(right: DsfrSpacings.s1w)
                : const EdgeInsets.only(left: DsfrSpacings.s1w),
            child: Icon(
              widget.icon,
              size: _getIconSize(),
              color: _getColor(context),
            ),
          ),
        ),
      ],
      TextSpan(text: widget.label),
    ];

    return Semantics(
      enabled: widget.onTap != null,
      link: true,
      child: Material(
        color: DsfrColorDecisions.backgroundTransparent(context),
        child: InkWell(
          onTap: widget.enabled ? widget.onTap : null,
          onHighlightChanged: updateMaterialState(WidgetState.pressed),
          onHover: updateMaterialState(WidgetState.hovered),
          focusColor: DsfrColorDecisions.backgroundTransparentHover(context),
          highlightColor: DsfrColorDecisions.backgroundTransparentActive(context),
          canRequestFocus: widget.onTap != null,
          onFocusChange: updateMaterialState(WidgetState.focused),
          child: DsfrFocusWidget(
            isFocused: isFocused,
            child: Text.rich(
              TextSpan(
                children:  widget.iconPosition == DsfrLinkIconPosition.start ?list : list.reversed.toList(),
              ),
              style: _getTextStyle(context).copyWith(
                shadows: [Shadow(color: _getColor(context), offset: Offset(0, -5))],
                color: Colors.transparent,
                decoration: isDisabled ? TextDecoration.none : TextDecoration.underline,
                decorationColor: _getColor(context),
                decorationThickness: isPressed || isHovered ? _getClickedUnderlineThickness() : 1,
              ),
            ),
          ),
        ),
      ),
    );
  }

  DsfrTextStyle _getTextStyle(BuildContext context) {
    var textColor = _getColor(context);

    switch (widget.size) {
      case DsfrComponentSize.lg:
        return DsfrTextStyle.bodyLg(color: textColor);
      case DsfrComponentSize.md:
        return DsfrTextStyle.bodyMd(color: textColor);
      case DsfrComponentSize.sm:
        return DsfrTextStyle.bodySm(color: textColor);
    }
  }

  Color _getColor(BuildContext context) {
    return widget.onTap == null || !widget.enabled
        ? DsfrColorDecisions.textDisabledGrey(context)
        : DsfrColorDecisions.textActionHighBlueFrance(context);
  }

  double _getIconSize() {
    switch (widget.size) {
      case DsfrComponentSize.lg:
        return 24;
      case DsfrComponentSize.md:
        return 16;
      case DsfrComponentSize.sm:
        return 16;
    }
  }

  double _getClickedUnderlineThickness() {
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
