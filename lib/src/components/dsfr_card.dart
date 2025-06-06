import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_badge.dart';
import 'package:flutter_dsfr/src/components/dsfr_tag.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_text_style.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_icons.g.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';

class DsfrCard extends StatelessWidget {
  final DsfrComponentSize size;
  final String title;
  final String? details;
  final IconData? detailsIcon;
  final bool showDetailsIcon;
  final String? description;
  final List<Widget>? badgesAndTags;

  const DsfrCard({
    super.key,
    required this.size,
    required this.title,
    this.details,
    this.detailsIcon,
    this.showDetailsIcon = true,
    this.description,
    this.badgesAndTags,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget>? badgesAndTagsToAdd =
      badgesAndTags?.takeWhile((element) => element is DsfrBadge || element is DsfrTag).toList();
    double paddingBetweenSections = _getPaddingBetweenSections(size);
    return Material(
      color: DsfrColorDecisions.backgroundDefaultGrey(context),
      shape: RoundedRectangleBorder(side: BorderSide(color: DsfrColorDecisions.borderDefaultGrey(context), width: 1.0)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if ((badgesAndTagsToAdd != null && badgesAndTagsToAdd.isNotEmpty) || details != null) ...[
              _PrecisionZone(size: size, badgesAndTags: badgesAndTagsToAdd, details: details, detailsIcon: detailsIcon, showDetailsIcon: showDetailsIcon),
              SizedBox(height: paddingBetweenSections),
            ],
            _Title(text: title, size: size),
            if (description != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: _Description(text: description!, size: size),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: _CardIcon(size: size),
            ),
          ],
        ),
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

  const _Title({required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    final color = DsfrColorDecisions.textTitleBlueFrance(context);
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (hasBadgesAndTags)
          _BadgesAndTags(size: size, badgesAndTags: badgesAndTags!),
        if (hasBadgesAndTags && hasDetails)
          SizedBox(height: _getPaddingInSection(size)),
        if (hasDetails) ...[
          _Details(text: details!, icon: detailsIcon, showIcon: showDetailsIcon),
        ]
      ]
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
          if (showIcon && icon != null) ...[
            Icon(icon, color: color, size: 16.0),
            const SizedBox(width: 8.0),
          ],
          Text(text, style: style, maxLines: 5, overflow: TextOverflow.ellipsis)
        ]
    );
  }
}

class _BadgesAndTags extends StatelessWidget {
  final DsfrComponentSize size;
  final List<Widget> badgesAndTags;

  const _BadgesAndTags({
    required this.size,
    required this.badgesAndTags,
  });

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
  final DsfrComponentSize size;

  const _CardIcon({required this.size});

  @override
  Widget build(BuildContext context) {
    final iconSize = switch (size) {
      DsfrComponentSize.sm => 16.0,
      DsfrComponentSize.md => 24.0,
      DsfrComponentSize.lg => 32.0,
    };

    return Align(
      alignment: Alignment.centerRight,
      child: Icon(
        DsfrIcons.systemArrowRightLine,
        size: iconSize,
        color: DsfrColorDecisions.textActionHighBlueFrance(context),
      ),
    );
  }
}
