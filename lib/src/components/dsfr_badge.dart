import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

enum DsfrBadgeType { information, warning, success, error, news, custom }

class DsfrBadge extends StatelessWidget {
  final String label;
  final DsfrBadgeType type;
  final bool withIcon;
  final Color? backgroundCustomColor;
  final Color? textCustomColor;
  final DsfrComponentSize size;

  const DsfrBadge({
    super.key,
    required this.label,
    required this.type,
    required this.size,
    this.withIcon = false,
    this.backgroundCustomColor,
    this.textCustomColor,
  });

  double _getIconSize() {
    switch (size) {
      case DsfrComponentSize.sm:
        return 16;
      case DsfrComponentSize.md:
        return 18;
      default:
        throw UnimplementedError('Size $size is not implemented');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: _getBackgroundColor(context), borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: _getPadding(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (withIcon)
              Padding(
                padding: const EdgeInsets.only(right: 6),
                child: Icon(_getIcon(), size: _getIconSize(), color: _getTextColor(context)),
              ),
            Text(
              label.toUpperCase(),
              style: size == DsfrComponentSize.sm
                  ? DsfrTextStyle.bodySmBold(color: _getTextColor(context))
                  : DsfrTextStyle.bodyMdBold(color: _getTextColor(context)),
            ),
          ],
        ),
      ),
    );
  }

  Color _getBackgroundColor(context) {
    switch (type) {
      case DsfrBadgeType.information:
        return DsfrColorDecisions.backgroundContrastInfo(context);
      case DsfrBadgeType.warning:
        return DsfrColorDecisions.backgroundContrastWarning(context);
      case DsfrBadgeType.success:
        return DsfrColorDecisions.backgroundContrastSuccess(context);
      case DsfrBadgeType.error:
        return DsfrColorDecisions.backgroundContrastError(context);
      case DsfrBadgeType.news:
        return DsfrColorDecisionsExtension.backgroundContrastNew(context);
      case DsfrBadgeType.custom:
        return backgroundCustomColor == null
            ? throw UnimplementedError('backgroundCustomColor is mandatory')
            : backgroundCustomColor!;
    }
  }

  EdgeInsetsGeometry _getPadding() {
    if (withIcon) {
      return size == DsfrComponentSize.sm
          ? const EdgeInsets.symmetric(horizontal: 4, vertical: 4)
          : const EdgeInsets.symmetric(horizontal: 6, vertical: 6);
    } else {
      return size == DsfrComponentSize.sm
          ? const EdgeInsets.symmetric(horizontal: 6, vertical: 4)
          : const EdgeInsets.symmetric(horizontal: 8, vertical: 6);
    }
  }

  Color _getTextColor(context) {
    switch (type) {
      case DsfrBadgeType.information:
        return DsfrColorDecisions.textDefaultInfo(context);
      case DsfrBadgeType.warning:
        return DsfrColorDecisions.textDefaultWarning(context);
      case DsfrBadgeType.success:
        return DsfrColorDecisions.textDefaultSuccess(context);
      case DsfrBadgeType.error:
        return DsfrColorDecisions.textDefaultError(context);
      case DsfrBadgeType.news:
        return DsfrColorDecisionsExtension.textDefaultNew(context);
      case DsfrBadgeType.custom:
        return textCustomColor == null ? throw UnimplementedError('textCustomColor is mandatory') : textCustomColor!;
    }
  }

  IconData _getIcon() {
    switch (type) {
      case DsfrBadgeType.information:
        return DsfrIcons.systemFrInfoFill;
      case DsfrBadgeType.warning:
        return DsfrIcons.systemFrWarningFill;
      case DsfrBadgeType.success:
        return DsfrIcons.systemCheckboxCircleFill;
      case DsfrBadgeType.error:
        return DsfrIcons.systemFrErrorFill;
      case DsfrBadgeType.news:
        return DsfrIcons.weatherFlashlightFill;
      case DsfrBadgeType.custom:
        throw UnimplementedError('custom with icon is not implemented');
    }
  }
}
