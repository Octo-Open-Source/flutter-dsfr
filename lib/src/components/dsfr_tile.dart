import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_shadow_decisions.dart';
import 'package:flutter_svg/svg.dart';

const int _badgesAndTagsMaxLength = 4;
const double _paddingImageAndBadges = 16;

enum DsfrTileType {
  vertical,
  horizontal,
}

enum DsfrTileBackgroundType {
  light,
  grey,
  lightWithShadow,
  lightNoBorder,
  transparent,
}

class DsfrTile extends StatelessWidget {
  const DsfrTile({
    super.key,
    this.type = DsfrTileType.vertical,
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
  }) : assert(badgesAndTags == null || (badgesAndTags.length <= _badgesAndTagsMaxLength));

  final DsfrComponentSize size;
  final DsfrTileType? type;
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

  Color _getTextColor(BuildContext context) {
    if (enabled) {
      return DsfrColorDecisions.textTitleBlueFrance(context);
    } else {
      return DsfrColorDecisions.textDisabledGrey(context);
    }
  }

  Color _getIconColor(BuildContext context) {
    if (enabled) {
      return DsfrColorDecisions.textActionHighBlueFrance(context);
    } else {
      return DsfrColorDecisions.textDisabledGrey(context);
    }
  }

  DsfrTextStyle _getTitleTextStyle(BuildContext context) {
    var textColor = _getTextColor(context);
    switch (size) {
      case DsfrComponentSize.md:
        return DsfrTextStyle.bodyLgBold(color: textColor);
      case DsfrComponentSize.sm:
        return DsfrTextStyle.bodyMdBold(color: textColor);
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  DsfrTextStyle _getDescriptionTextStyle(BuildContext context) {
    switch (size) {
      case DsfrComponentSize.md:
        return DsfrTextStyle.bodyMdMedium(color: DsfrColorDecisions.textDefaultGrey(context));
      case DsfrComponentSize.sm:
        return DsfrTextStyle.bodySmMedium(color: DsfrColorDecisions.textDefaultGrey(context));
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  double _getImageHeight() {
    switch (size) {
      case DsfrComponentSize.md:
        return 80;
      case DsfrComponentSize.sm:
        return 56;
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  double _getIconSize() {
    switch (size) {
      case DsfrComponentSize.md:
        return 24;
      case DsfrComponentSize.sm:
        return 16;
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  double _getPaddingBadgesAndTitle() {
    switch (size) {
      case DsfrComponentSize.md:
        return 12;
      case DsfrComponentSize.sm:
        return 8;
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  double _getPaddingTitleAndDescription() {
    switch (size) {
      case DsfrComponentSize.md:
        return 8;
      case DsfrComponentSize.sm:
        return 4;
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  double _getPaddingDescriptionAndDetail() {
    switch (size) {
      case DsfrComponentSize.md:
        return 16;
      case DsfrComponentSize.sm:
        return 12;
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  Color _getBackgroundColor(BuildContext context) {
    switch (backgroundType) {
      case DsfrTileBackgroundType.grey:
        return DsfrColorDecisions.backgroundContrastGrey(context);
      case DsfrTileBackgroundType.transparent:
        return DsfrColorDecisions.backgroundTransparent(context);
      default:
        return DsfrColorDecisions.backgroundDefaultGrey(context);
    }
  }

  BoxBorder? _getBottomBorder(BuildContext context) {
    Color bottomBorderColor = (onTap == null)
        ? DsfrColorDecisions.borderPlainGrey(context)
        : DsfrColorDecisions.borderPlainBlueFrance(context);
    if (backgroundType == DsfrTileBackgroundType.lightNoBorder) {
      return null;
    } else {
      return Border(
        bottom: BorderSide(color: bottomBorderColor, width: 4),
      );
    }
  }

  BoxBorder? _getTopRightLeftBorder(BuildContext context) {
    DsfrColorDecisions.borderPlainBlueFrance(context);
    if (backgroundType == DsfrTileBackgroundType.lightNoBorder) {
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
    return backgroundType == DsfrTileBackgroundType.lightWithShadow ? [DsfrShadowDecisions.raised(context)] : null;
  }

  @override
  Widget build(final context) {
    return Focus(
      focusNode: focusNode,
      canRequestFocus: enabled,
      child: Builder(builder: (final context) {
        final isFocused = Focus.of(context).hasFocus;
        List<Widget>? badgesAndTagsToAdd =
            badgesAndTags?.takeWhile((element) => element is DsfrBadge || element is DsfrTag).toList();
        return DsfrFocusWidget(
            isFocused: isFocused,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: _getShadow(context),
                border: _getBottomBorder(context),
              ),
              child: Material(
                color: _getBackgroundColor(context),
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                      border: _getTopRightLeftBorder(context),
                    ),
                    child:
                    Builder(
                      builder: (context) {
                        return switch (type) {
                          DsfrTileType.vertical =>_VerticalTile(
                            imageAsset: imageAsset,
                            imageHeight: _getImageHeight(),
                            badgesAndTagsToAdd: badgesAndTagsToAdd,
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
                          DsfrTileType.horizontal => _HorizontalTile(
                            imageAsset: imageAsset,
                            imageHeight: _getImageHeight(),
                            badgesAndTagsToAdd: badgesAndTagsToAdd,
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
                          null => throw UnimplementedError(
                            'Type $type is not implemented',
                          ),
                        };
                      },
                    ),
                  ),
                ),
              ),
            ));
      }),
    );
  }
}

class _VerticalTile extends StatelessWidget {
  final String? imageAsset;
  final double imageHeight;
  final List<Widget>? badgesAndTagsToAdd;
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
  final Color? iconColor;
  final GestureTapCallback? onTap;

  const _VerticalTile({
    required this.imageAsset,
    required this.imageHeight,
    required this.badgesAndTagsToAdd,
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
        if (imageAsset != null)
          _TileImage(imageAsset: imageAsset!, height: imageHeight),
        if (imageAsset != null) const SizedBox(height: _paddingImageAndBadges),
        if (badgesAndTagsToAdd != null && badgesAndTagsToAdd!.isNotEmpty)
          Column(
            children: [
              ExcludeFocus(
                  child: Column(
                    children: [...badgesAndTagsToAdd!],
                  )),
              SizedBox(height: paddingBadgesAndTitle),
            ],
          ),
        Text(
          title,
          style: titleTextStyle,
        ),
        if (description != null) SizedBox(height: paddingTitleAndDescription),
        if (description != null)
          Text(
            description!,
            style: descriptionTextStyle,
          ),
        if (details != null) SizedBox(height: paddingDescriptionAndDetails),
        if (details != null)
          Text(
            details!,
            style: DsfrTextStyle.bodyXsMedium(color: DsfrColorDecisions.textMentionGrey(context)),
          ),
        if (showActionIcon && onTap != null)
          Container(
            alignment: Alignment.centerRight,
            child: Icon(
              actionIcon,
              size: iconSize,
              color: iconColor,
            ),
          ),
      ],
    );
  }
}

class _HorizontalTile extends StatelessWidget {
  final String? imageAsset;
  final double imageHeight;
  final List<Widget>? badgesAndTagsToAdd;
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
  final Color? iconColor;
  final GestureTapCallback? onTap;

  const _HorizontalTile({
    required this.imageAsset,
    required this.imageHeight,
    required this.badgesAndTagsToAdd,
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
        if (imageAsset != null)
          _TileImage(imageAsset: imageAsset!, height: imageHeight),
        Expanded(child:
          Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (badgesAndTagsToAdd != null && badgesAndTagsToAdd!.isNotEmpty)
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExcludeFocus(
                      child: Column(
                        children: [...badgesAndTagsToAdd!],
                      )),
                  SizedBox(height: paddingBadgesAndTitle),
                ],
              ),
            Text(
              title,
              style: titleTextStyle,
            ),
            if (description != null) SizedBox(height: paddingTitleAndDescription),
            if (description != null)
              Text(
                description!,
                style: descriptionTextStyle,
              ),
            if (details != null || (showActionIcon && onTap != null))
              SizedBox(height: paddingDescriptionAndDetails),
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
                    if (showActionIcon && onTap != null)
                      Icon(
                        actionIcon,
                        size: iconSize,
                        color: iconColor,
                      ),
                  ],
                ),
          ],
        ),
        ),
      ]
    );
  }
}

class _TileImage extends StatelessWidget {
  final String imageAsset;
  final double height;

  const _TileImage({
    required this.imageAsset,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    if (imageAsset.endsWith('svg')) {
      return SvgPicture.asset(
        imageAsset,
        height: height,
        fit: BoxFit.fitHeight,
        excludeFromSemantics: true,
      );
    } else {
      return Image.asset(imageAsset, height: height, fit: BoxFit.fitHeight);
    }
  }
}
