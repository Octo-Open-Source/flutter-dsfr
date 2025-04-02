import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
import 'package:flutter_svg/svg.dart';

const int _badgesAndTagsMaxLength = 4;
const double _paddingImageAndBadges = 16;

enum DsfrTuileBackgroundType {
  light,
  grey,
  lightWithShadow,
  lightNoBorder,
  transparent,
}

class DsfrTuile extends StatelessWidget {
  const DsfrTuile._({
    super.key,
    this.backgroundType,
    required this.title,
    this.description,
    this.detail,
    required this.size,
    this.imageAsset,
    this.onTap,
    this.focusNode,
    this.enabled = true,
    this.badgesAndTags,
    this.showActionIcon = true,
    this.actionIcon = DsfrIcons.systemArrowRightLine,
  }) : assert(badgesAndTags == null || (badgesAndTags.length <= _badgesAndTagsMaxLength));

  const DsfrTuile.sm({
    final DsfrTuileBackgroundType? backgroundType,
    required final String title,
    final String? description,
    final String? detail,
    final String? imageAsset,
    final double? imageHeight,
    final double? imageWidth,
    final GestureTapCallback? onTap,
    final Color? backgroundColor,
    final Color? highlightColor,
    final Color? textColor,
    final Color? selectedBackgroundColor,
    final Color? selectedHighlightColor,
    final Color? selectedTextColor,
    final Key? key,
    final bool isSelectable = false,
    final bool isSelected = false,
    final ValueChanged<bool>? onSelectionChanged,
    final bool enabled = true,
    final List<Widget>? badgesAndTags,
    final bool showActionIcon = true,
    final IconData? actionIcon = DsfrIcons.systemArrowRightLine,
  }) : this._(
    key: key,
    backgroundType: backgroundType,
    title: title,
    description: description,
    detail: detail,
    size: DsfrComponentSize.sm,
    imageAsset: imageAsset,
    onTap: onTap,
    enabled: enabled,
    badgesAndTags: badgesAndTags,
    showActionIcon: showActionIcon,
    actionIcon: actionIcon,
  );

  const DsfrTuile.md({
    final DsfrTuileBackgroundType? backgroundType,
    required final String title,
    final String? description,
    final String? detail,
    final String? imageAsset,
    final double? imageHeight,
    final double? imageWidth,
    final GestureTapCallback? onTap,
    final Color? backgroundColor,
    final Color? highlightColor,
    final Color? textColor,
    final Color? selectedBackgroundColor,
    final Color? selectedHighlightColor,
    final Color? selectedTextColor,
    final Key? key,
    final bool isSelectable = false,
    final bool isSelected = false,
    final ValueChanged<bool>? onSelectionChanged,
    final bool enabled = true,
    final List<Widget>? badgesAndTags,
    final bool showActionIcon = true,
    final IconData? actionIcon = DsfrIcons.systemArrowRightLine,
  }) : this._(
    key: key,
    backgroundType: backgroundType,
    title: title,
    description: description,
    detail: detail,
    size: DsfrComponentSize.md,
    imageAsset: imageAsset,
    onTap: onTap,
    enabled: enabled,
    badgesAndTags: badgesAndTags,
  );

  final DsfrTuileBackgroundType? backgroundType;
  final String title;
  final String? description;
  final String? detail;
  final DsfrComponentSize size;
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
      case DsfrTuileBackgroundType.grey:
        return DsfrColorDecisions.backgroundContrastGrey(context);
      case DsfrTuileBackgroundType.transparent:
        return DsfrColorDecisions.backgroundTransparent(context);
      default:
        return DsfrColorDecisions.backgroundDefaultGrey(context);
    }
  }

  BoxBorder? _getBorder(BuildContext context) {
    Color bottomBorderColor = (onTap == null) ? DsfrColorDecisions.borderPlainGrey(context) :
        DsfrColorDecisions.borderPlainBlueFrance(context);
    if (backgroundType == DsfrTuileBackgroundType.lightNoBorder) {
      return null;
    } else {
      return Border(
        top: BorderSide(color: DsfrColorDecisions.borderDefaultGrey(context)),
        right: BorderSide(color: DsfrColorDecisions.borderDefaultGrey(context)),
        bottom: BorderSide(color: bottomBorderColor,
            width: 4),
        left: BorderSide(color: DsfrColorDecisions.borderDefaultGrey(context)),
      );
    }
  }

  List<BoxShadow>? _getShadow(BuildContext context) {
    // TODO ajouter l'ombre
    return null;
  }

  @override
  Widget build(final context) {
    return Focus(
      focusNode: focusNode,
      canRequestFocus: enabled,
      child: Builder(builder: (final context) {
        final isFocused = Focus
            .of(context)
            .hasFocus;
        List<Widget>? badgesAndTagsToAdd =
        badgesAndTags?.takeWhile((element) => element is DsfrBadge || element is DsfrTag).toList();
        return DsfrFocusWidget(
            isFocused: isFocused,
            child: Material(
                color: _getBackgroundColor(context),
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                        boxShadow: _getShadow(context),
                        border: _getBorder(context),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (imageAsset != null)
                          if (imageAsset!.endsWith('svg'))
                            SvgPicture.asset(
                              imageAsset!,
                              height: _getImageHeight(),
                              fit: BoxFit.fitHeight,
                              excludeFromSemantics: true,
                            )
                          else
                            Image.asset(imageAsset!, height: _getImageHeight(), fit: BoxFit.fitHeight),
                        if (imageAsset != null) const SizedBox(height: _paddingImageAndBadges),
                        if (badgesAndTagsToAdd != null && badgesAndTagsToAdd.isNotEmpty)
                          Column(
                            children: [
                              ExcludeFocus(child: Column(
                                children: [
                                  ...badgesAndTagsToAdd
                                ],
                              )),
                              SizedBox(height: _getPaddingBadgesAndTitle()),
                            ],
                          ),
                        Text(
                          title,
                          style: _getTitleTextStyle(context),
                        ),
                        if (description != null) SizedBox(height: _getPaddingTitleAndDescription()),
                        if (description != null)
                          Text(
                            description!,
                            style: _getDescriptionTextStyle(context),
                          ),
                        if (detail != null) SizedBox(height: _getPaddingDescriptionAndDetail()),
                        if (detail != null)
                          Text(
                            detail!,
                            style: DsfrTextStyle.bodyXsMedium(color: DsfrColorDecisions.textMentionGrey(context)),
                          ),
                        if (showActionIcon && onTap != null)
                          Container(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              actionIcon,
                              size: _getIconSize(),
                              color: _getIconColor(context),
                            ),
                          ),
                      ],
                    ),
                  ),
                )
            ));
      }),
    );
  }
}
