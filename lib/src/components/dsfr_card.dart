import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_svg/svg.dart';

class DsfrCard extends StatefulWidget {
  final DsfrComponentSize size;
  final String? imageAsset;
  final String title;
  final String? details;
  final IconData? detailsIcon;
  final bool showDetailsIcon;
  final String? description;
  final List<Widget>? badgesAndTags;
  final IconData actionIcon;
  final String? actionDetails;
  final void Function()? onPressed;

  const DsfrCard({
    super.key,
    required this.size,
    this.imageAsset,
    required this.title,
    this.details,
    this.detailsIcon,
    this.showDetailsIcon = true,
    this.description,
    this.badgesAndTags,
    this.actionIcon = DsfrIcons.systemArrowRightLine,
    this.actionDetails,
    this.onPressed,
  });

  @override
  State<DsfrCard> createState() => _DsfrCardState();
}

class _DsfrCardState extends State<DsfrCard> {
  bool hasFocus = false;

  @override
  Widget build(BuildContext context) {
    List<Widget>? badgesAndTagsToAdd = widget.badgesAndTags
        ?.takeWhile((element) => element is DsfrBadge || element is DsfrTag)
        .toList();
    double paddingBetweenSections = _getPaddingBetweenSections(widget.size);
    return DsfrFocusWidget(
      isFocused: hasFocus,
      child: Semantics(
        enabled: widget.onPressed != null,
        button: true,
        child: Material(
          color: DsfrColorDecisions.backgroundDefaultGrey(context),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: DsfrColorDecisions.borderDefaultGrey(context), width: 1.0),
          ),
          child: InkWell(
            onTap: widget.onPressed == null
                ? null
                : () {
                    widget.onPressed!();
                  },
            focusColor: DsfrColorDecisions.backgroundTransparent(context),
            canRequestFocus: widget.onPressed != null,
            onFocusChange: (final hasFocus) => setState(() => this.hasFocus = hasFocus),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.imageAsset != null) _CardImage(imageAsset: widget.imageAsset!),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if ((badgesAndTagsToAdd != null && badgesAndTagsToAdd.isNotEmpty) || widget.details != null) ...[
                        _PrecisionZone(
                          size: widget.size,
                          badgesAndTags: badgesAndTagsToAdd,
                          details: widget.details,
                          detailsIcon: widget.detailsIcon,
                          showDetailsIcon: widget.showDetailsIcon,
                        ),
                        SizedBox(height: paddingBetweenSections),
                      ],
                      _Title(text: widget.title, size: widget.size, enabled: widget.onPressed != null),
                      if (widget.description != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: _Description(text: widget.description!, size: widget.size),
                        ),
                      _ActionZone(
                        actionDetails: widget.actionDetails,
                        actionIcon: widget.actionIcon,
                        size: widget.size,
                        enabled: widget.onPressed != null,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionZone extends StatelessWidget {
  final String? actionDetails;
  final IconData actionIcon;
  final DsfrComponentSize size;
  final bool enabled;

  const _ActionZone({required this.actionDetails, required this.actionIcon, required this.size, required this.enabled});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: actionDetails != null ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (actionDetails != null)
            Text(actionDetails!, style: DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textMentionGrey(context))),
          _CardIcon(
            icon: actionIcon,
            size: size,
            color: enabled
                ? DsfrColorDecisions.textActionHighBlueFrance(context)
                : DsfrColorDecisions.textDisabledGrey(context),
          ),
        ],
      ),
    );
  }
}

double _getPaddingInSection(DsfrComponentSize size) {
  switch (size) {
    case DsfrComponentSize.lg:
      return 16;
    case DsfrComponentSize.md:
      return 12;
    case DsfrComponentSize.sm:
      return 8;
  }
}

double _getPaddingBetweenSections(DsfrComponentSize size) {
  switch (size) {
    case DsfrComponentSize.lg:
      return 24;
    case DsfrComponentSize.md:
      return 16;
    case DsfrComponentSize.sm:
      return 12;
  }
}

class _Title extends StatelessWidget {
  final String text;
  final DsfrComponentSize size;
  final bool enabled;

  const _Title({required this.text, required this.size, required this.enabled});

  @override
  Widget build(BuildContext context) {
    final color = enabled
        ? DsfrColorDecisions.textTitleBlueFrance(context)
        : DsfrColorDecisions.textDisabledGrey(context);
    final style = switch (size) {
      DsfrComponentSize.sm => DsfrTextStyle.headline6(color: color),
      DsfrComponentSize.md => DsfrTextStyle.headline5(color: color),
      DsfrComponentSize.lg => DsfrTextStyle.headline4(color: color),
    };
    return Text(text, style: style);
  }
}

class _Description extends StatelessWidget {
  final String text;
  final DsfrComponentSize size;

  const _Description({required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    final color = DsfrColorDecisions.textDefaultGrey(context);
    final style = switch (size) {
      DsfrComponentSize.sm => DsfrTextStyle.bodySm(color: color),
      DsfrComponentSize.md => DsfrTextStyle.bodySm(color: color),
      DsfrComponentSize.lg => DsfrTextStyle.bodyMd(color: color),
    };
    return Text(text, style: style, maxLines: 5, overflow: TextOverflow.ellipsis);
  }
}

class _PrecisionZone extends StatelessWidget {
  final DsfrComponentSize size;
  final List<Widget>? badgesAndTags;
  final String? details;
  final IconData? detailsIcon;
  final bool showDetailsIcon;

  const _PrecisionZone({
    required this.size,
    required this.badgesAndTags,
    this.details,
    this.detailsIcon,
    this.showDetailsIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasBadgesAndTags = badgesAndTags != null && badgesAndTags!.isNotEmpty;
    final bool hasDetails = details != null;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (hasBadgesAndTags) _BadgesAndTags(size: size, badgesAndTags: badgesAndTags!),
        if (hasBadgesAndTags && hasDetails) SizedBox(height: _getPaddingInSection(size)),
        if (hasDetails) ...[_Details(text: details!, icon: detailsIcon, showIcon: showDetailsIcon)],
      ],
    );
  }
}

class _Details extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool showIcon;

  const _Details({required this.text, this.icon, required this.showIcon});

  @override
  Widget build(BuildContext context) {
    final color = DsfrColorDecisions.textMentionGrey(context);
    final style = DsfrTextStyle.bodySm(color: color);
    return Row(
      children: [
        if (showIcon && icon != null) ...[Icon(icon, color: color, size: 16.0), const SizedBox(width: 8.0)],
        Text(text, style: style, maxLines: 5, overflow: TextOverflow.ellipsis),
      ],
    );
  }
}

class _BadgesAndTags extends StatelessWidget {
  final DsfrComponentSize size;
  final List<Widget> badgesAndTags;

  const _BadgesAndTags({required this.size, required this.badgesAndTags});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 8, // horizontal spacing
      runSpacing: 8, // vertical spacing
      children: badgesAndTags,
    );
  }
}

class _CardIcon extends StatelessWidget {
  final IconData icon;
  final DsfrComponentSize size;
  final Color color;

  const _CardIcon({required this.icon, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    final iconSize = switch (size) {
      DsfrComponentSize.sm => 16.0,
      DsfrComponentSize.md => 24.0,
      DsfrComponentSize.lg => 32.0,
    };

    return Align(
      alignment: Alignment.centerRight,
      child: Icon(icon, size: iconSize, color: color),
    );
  }
}

class _CardImage extends StatelessWidget {
  final String imageAsset;

  const _CardImage({required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: imageAsset.endsWith('svg')
          ? SvgPicture.asset(imageAsset, fit: BoxFit.fitHeight, excludeFromSemantics: true)
          : Image.asset(imageAsset, fit: BoxFit.fitHeight),
    );
  }
}
