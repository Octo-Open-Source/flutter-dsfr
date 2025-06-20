import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_shadow_decisions.dart';
import 'package:flutter_svg/svg.dart';

const double _paddingImageAndBadges = 16;

enum DsfrTileBackgroundType { light, grey, lightWithShadow, lightNoBorder, transparent }

class DsfrTile extends StatefulWidget {
  const DsfrTile({
    super.key,
    this.direction = Axis.vertical,
    this.backgroundType,
    required this.title,
    this.description,
    this.details,
    required this.size,
    this.imageAsset,
    this.onTap,
    this.focusNode,
    this.enabled = true,
    this.badgesAndTags,
    this.showActionIcon = true,
    this.actionIcon = DsfrIcons.systemArrowRightLine,
  }) : assert(badgesAndTags == null || (badgesAndTags.length <= 4));

  final DsfrComponentSize size;
  final Axis direction;
  final DsfrTileBackgroundType? backgroundType;
  final String title;
  final String? description;
  final String? details;
  final GestureTapCallback? onTap;
  final String? imageAsset;
  final FocusNode? focusNode;
  final bool enabled;
  final List<Widget>? badgesAndTags;
  final bool showActionIcon;
  final IconData? actionIcon;

  @override
  State<DsfrTile> createState() => _DsfrTileState();
}

class _DsfrTileState extends State<DsfrTile> {
  bool hasFocus = false;

  @override
  Widget build(final context) {
    final enabled = widget.enabled;
    final focusNode = widget.focusNode;
    final badgesAndTags = widget.badgesAndTags;
    final onTap = widget.onTap;
    final direction = widget.direction;
    final title = widget.title;
    final description = widget.description;
    final details = widget.details;
    final imageAsset = widget.imageAsset;
    final showActionIcon = widget.showActionIcon;
    final actionIcon = widget.actionIcon;

    List<Widget>? badgesAndTagsToAdd = badgesAndTags
        ?.takeWhile((element) => element is DsfrBadge || element is DsfrTag)
        .toList();

    return MergeSemantics(
      child: Semantics(
        enabled: enabled,
        child: DsfrFocusWidget(
          isFocused: hasFocus,
          child: Container(
            decoration: BoxDecoration(boxShadow: _getShadow(context), border: _getBottomBorder(context)),
            child: Material(
              color: _getBackgroundColor(context),
              child: InkWell(
                onFocusChange: (final hasFocus) => setState(() => this.hasFocus = hasFocus),
                focusNode: focusNode,
                onTap: enabled ? onTap : null,
                child: Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(border: _getTopRightLeftBorder(context)),
                  child: Builder(
                    builder: (context) {
                      return switch (direction) {
                        Axis.vertical => _VerticalTile(
                          imageAsset: imageAsset,
                          imageHeight: _getImageHeight(),
                          badgesAndTagsToAdd: badgesAndTagsToAdd,
                          paddingBadges: _getPaddingBadges(),
                          paddingBadgesAndTitle: _getPaddingBadgesAndTitle(),
                          paddingTitleAndDescription: _getPaddingTitleAndDescription(),
                          paddingDescriptionAndDetails: _getPaddingDescriptionAndDetail(),
                          title: title,
                          description: description,
                          details: details,
                          titleTextStyle: _getTitleTextStyle(context),
                          descriptionTextStyle: _getDescriptionTextStyle(context),
                          showActionIcon: showActionIcon,
                          actionIcon: actionIcon,
                          iconSize: _getIconSize(),
                          iconColor: _getIconColor(context),
                          onTap: onTap,
                        ),
                        Axis.horizontal => _HorizontalTile(
                          imageAsset: imageAsset,
                          imageHeight: _getImageHeight(),
                          badgesAndTagsToAdd: badgesAndTagsToAdd,
                          paddingBadges: _getPaddingBadges(),
                          paddingBadgesAndTitle: _getPaddingBadgesAndTitle(),
                          paddingTitleAndDescription: _getPaddingTitleAndDescription(),
                          paddingDescriptionAndDetails: _getPaddingDescriptionAndDetail(),
                          title: title,
                          description: description,
                          details: details,
                          titleTextStyle: _getTitleTextStyle(context),
                          descriptionTextStyle: _getDescriptionTextStyle(context),
                          showActionIcon: showActionIcon,
                          actionIcon: actionIcon,
                          iconSize: _getIconSize(),
                          iconColor: _getIconColor(context),
                          onTap: onTap,
                        ),
                      };
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getTextColor(BuildContext context) {
    if (widget.enabled) {
      return DsfrColorDecisions.textTitleBlueFrance(context);
    } else {
      return DsfrColorDecisions.textDisabledGrey(context);
    }
  }

  Color _getIconColor(BuildContext context) {
    if (widget.enabled) {
      return DsfrColorDecisions.textActionHighBlueFrance(context);
    } else {
      return DsfrColorDecisions.textDisabledGrey(context);
    }
  }

  DsfrTextStyle _getTitleTextStyle(BuildContext context) {
    var textColor = _getTextColor(context);
    switch (widget.size) {
      case DsfrComponentSize.md:
        return DsfrTextStyle.bodyLgBold(color: textColor);
      case DsfrComponentSize.sm:
        return DsfrTextStyle.bodyMdBold(color: textColor);
      default:
        throw UnimplementedError('Size ${widget.size} is not implemented');
    }
  }

  DsfrTextStyle _getDescriptionTextStyle(BuildContext context) {
    switch (widget.size) {
      case DsfrComponentSize.md:
        return DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDefaultGrey(context));
      case DsfrComponentSize.sm:
        return DsfrTextStyle.bodySm(color: DsfrColorDecisions.textDefaultGrey(context));
      default:
        throw UnimplementedError('Size ${widget.size} is not implemented');
    }
  }

  double _getImageHeight() {
    switch (widget.size) {
      case DsfrComponentSize.md:
        return 80;
      case DsfrComponentSize.sm:
        return 56;
      default:
        throw UnimplementedError('Size ${widget.size} is not implemented');
    }
  }

  double _getIconSize() {
    switch (widget.size) {
      case DsfrComponentSize.md:
        return 24;
      case DsfrComponentSize.sm:
        return 16;
      default:
        throw UnimplementedError('Size ${widget.size} is not implemented');
    }
  }

  double _getPaddingBadges() {
    switch (widget.size) {
      case DsfrComponentSize.md:
        return 12;
      case DsfrComponentSize.sm:
        return 8;
      default:
        throw UnimplementedError('Size ${widget.size} is not implemented');
    }
  }

  double _getPaddingBadgesAndTitle() {
    switch (widget.size) {
      case DsfrComponentSize.md:
        return 12;
      case DsfrComponentSize.sm:
        return 8;
      default:
        throw UnimplementedError('Size ${widget.size} is not implemented');
    }
  }

  double _getPaddingTitleAndDescription() {
    switch (widget.size) {
      case DsfrComponentSize.md:
        return 8;
      case DsfrComponentSize.sm:
        return 4;
      default:
        throw UnimplementedError('Size ${widget.size} is not implemented');
    }
  }

  double _getPaddingDescriptionAndDetail() {
    switch (widget.size) {
      case DsfrComponentSize.md:
        return 16;
      case DsfrComponentSize.sm:
        return 12;
      default:
        throw UnimplementedError('Size ${widget.size} is not implemented');
    }
  }

  Color _getBackgroundColor(BuildContext context) {
    switch (widget.backgroundType) {
      case DsfrTileBackgroundType.grey:
        return DsfrColorDecisions.backgroundContrastGrey(context);
      case DsfrTileBackgroundType.transparent:
        return DsfrColorDecisions.backgroundTransparent(context);
      default:
        return DsfrColorDecisions.backgroundDefaultGrey(context);
    }
  }

  BoxBorder? _getBottomBorder(BuildContext context) {
    Color bottomBorderColor = (widget.enabled)
        ? (widget.onTap == null)
              ? DsfrColorDecisions.borderPlainGrey(context)
              : DsfrColorDecisions.borderPlainBlueFrance(context)
        : DsfrColorDecisions.backgroundDisabledGrey(context);
    if (widget.backgroundType == DsfrTileBackgroundType.lightNoBorder) {
      return null;
    } else {
      return Border(bottom: BorderSide(color: bottomBorderColor, width: 4));
    }
  }

  BoxBorder? _getTopRightLeftBorder(BuildContext context) {
    DsfrColorDecisions.borderPlainBlueFrance(context);
    if (widget.backgroundType == DsfrTileBackgroundType.lightNoBorder) {
      return null;
    } else {
      return Border(
        top: BorderSide(color: DsfrColorDecisions.borderDefaultGrey(context), width: 1),
        right: BorderSide(color: DsfrColorDecisions.borderDefaultGrey(context), width: 1),
        left: BorderSide(color: DsfrColorDecisions.borderDefaultGrey(context), width: 1),
      );
    }
  }

  List<BoxShadow>? _getShadow(BuildContext context) {
    return widget.backgroundType == DsfrTileBackgroundType.lightWithShadow
        ? [DsfrShadowDecisions.raised(context)]
        : null;
  }
}

class _VerticalTile extends StatelessWidget {
  final String? imageAsset;
  final double imageHeight;
  final List<Widget>? badgesAndTagsToAdd;
  final double paddingBadges;
  final double paddingBadgesAndTitle;
  final double paddingTitleAndDescription;
  final double paddingDescriptionAndDetails;
  final String title;
  final String? description;
  final String? details;
  final TextStyle titleTextStyle;
  final TextStyle descriptionTextStyle;
  final bool showActionIcon;
  final IconData? actionIcon;
  final double iconSize;
  final Color iconColor;
  final GestureTapCallback? onTap;

  const _VerticalTile({
    required this.imageAsset,
    required this.imageHeight,
    required this.badgesAndTagsToAdd,
    required this.paddingBadges,
    required this.paddingBadgesAndTitle,
    required this.paddingTitleAndDescription,
    required this.paddingDescriptionAndDetails,
    required this.title,
    required this.description,
    required this.details,
    required this.titleTextStyle,
    required this.descriptionTextStyle,
    required this.showActionIcon,
    required this.actionIcon,
    required this.iconSize,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (imageAsset != null) _TileImage(imageAsset: imageAsset!, height: imageHeight),
        if (imageAsset != null) const SizedBox(height: _paddingImageAndBadges),
        if (badgesAndTagsToAdd != null && badgesAndTagsToAdd!.isNotEmpty)
          Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: paddingBadges, // horizontal spacing
                runSpacing: paddingBadges, // vertical spacing
                children: badgesAndTagsToAdd!,
              ),
              SizedBox(height: paddingBadgesAndTitle),
            ],
          ),
        Text(title, style: titleTextStyle),
        if (description != null) ...[
          SizedBox(height: paddingTitleAndDescription),
          Text(description!, style: descriptionTextStyle),
        ],
        if (details != null) ...[
          SizedBox(height: paddingDescriptionAndDetails),
          Text(details!, style: DsfrTextStyle.bodyXsMedium(color: DsfrColorDecisions.textMentionGrey(context))),
        ],
        if (showActionIcon && onTap != null)
          Container(
            alignment: Alignment.centerRight,
            child: Icon(actionIcon, size: iconSize, color: iconColor),
          ),
      ],
    );
  }
}

class _HorizontalTile extends StatelessWidget {
  final String? imageAsset;
  final double imageHeight;
  final List<Widget>? badgesAndTagsToAdd;
  final double paddingBadges;
  final double paddingBadgesAndTitle;
  final double paddingTitleAndDescription;
  final double paddingDescriptionAndDetails;
  final String title;
  final String? description;
  final String? details;
  final TextStyle titleTextStyle;
  final TextStyle descriptionTextStyle;
  final bool showActionIcon;
  final IconData? actionIcon;
  final double iconSize;
  final Color iconColor;
  final GestureTapCallback? onTap;

  const _HorizontalTile({
    required this.imageAsset,
    required this.imageHeight,
    required this.badgesAndTagsToAdd,
    required this.paddingBadges,
    required this.paddingBadgesAndTitle,
    required this.paddingTitleAndDescription,
    required this.paddingDescriptionAndDetails,
    required this.title,
    required this.description,
    required this.details,
    required this.titleTextStyle,
    required this.descriptionTextStyle,
    required this.showActionIcon,
    required this.actionIcon,
    required this.iconSize,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 24,
      children: [
        if (imageAsset != null) _TileImage(imageAsset: imageAsset!, height: imageHeight),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (badgesAndTagsToAdd != null && badgesAndTagsToAdd!.isNotEmpty)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: paddingBadges, // horizontal spacing
                      runSpacing: paddingBadges, // vertical spacing
                      children: badgesAndTagsToAdd!,
                    ),
                    SizedBox(height: paddingBadgesAndTitle),
                  ],
                ),
              Text(title, style: titleTextStyle),
              if (description != null) ...[
                SizedBox(height: paddingTitleAndDescription),
                Text(description!, style: descriptionTextStyle),
              ],
              if (details != null || (showActionIcon && onTap != null)) SizedBox(height: paddingDescriptionAndDetails),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (details != null)
                    Text(
                      details!,
                      style: DsfrTextStyle.bodyXsMedium(color: DsfrColorDecisions.textMentionGrey(context)),
                    ),
                  if (showActionIcon && onTap != null) Icon(actionIcon, size: iconSize, color: iconColor),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TileImage extends StatelessWidget {
  final String imageAsset;
  final double height;

  const _TileImage({required this.imageAsset, required this.height});

  @override
  Widget build(BuildContext context) {
    if (imageAsset.endsWith('svg')) {
      return SvgPicture.asset(imageAsset, height: height, fit: BoxFit.fitHeight, excludeFromSemantics: true);
    } else {
      return Image.asset(imageAsset, height: height, fit: BoxFit.fitHeight);
    }
  }
}
