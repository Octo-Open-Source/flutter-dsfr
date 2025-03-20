import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions_extension.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

enum DsfrLabelType {
  information,
  warning,
  success,
  error,
  novelties,
  custom,
}

class DsfrLabel extends StatelessWidget {
  final String label;
  final DsfrLabelType type;
  final bool withIcon;
  final Color? backgroundCustomColor;
  final Color? textCustomColor;
  final double iconSize;
  final DsfrComponentSize size;

  const DsfrLabel._({
    super.key,
    required this.label,
    required this.type,
    this.withIcon = false,
    this.backgroundCustomColor,
    this.textCustomColor,
    required this.iconSize,
    required this.size,
  });

  const DsfrLabel.sm({
    super.key,
    required this.label,
    required this.type,
    this.withIcon = false,
    this.backgroundCustomColor,
    this.textCustomColor,
  })  : iconSize = 12,
        size = DsfrComponentSize.sm;

  const DsfrLabel.md({
    super.key,
    required this.label,
    required this.type,
    this.withIcon = false,
    this.backgroundCustomColor,
    this.textCustomColor,
  })  : iconSize = 16,
        size = DsfrComponentSize.md;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: _getBackgroundColor(context),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (withIcon)
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(_getIcon(), size: iconSize, color: _getTextColor(context)),
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
      case DsfrLabelType.information:
        return DsfrColorDecisions.backgroundContrastInfo(context);
      case DsfrLabelType.warning:
        return DsfrColorDecisions.backgroundContrastWarning(context);
      case DsfrLabelType.success:
        return DsfrColorDecisions.backgroundContrastSuccess(context);
      case DsfrLabelType.error:
        return DsfrColorDecisions.backgroundContrastError(context);
      case DsfrLabelType.novelties:
        return DsfrColorDecisionsExtension.backgroundContrastNew(context);
      case DsfrLabelType.custom:
        return backgroundCustomColor == null
            ? throw UnimplementedError('backgroundCustomColor is mandatory')
            : backgroundCustomColor!;
    }
  }

  Color _getTextColor(context) {
    switch (type) {
      case DsfrLabelType.information:
        return DsfrColorDecisions.textDefaultInfo(context);
      case DsfrLabelType.warning:
        return DsfrColorDecisions.textDefaultWarning(context);
      case DsfrLabelType.success:
        return DsfrColorDecisions.textDefaultSuccess(context);
      case DsfrLabelType.error:
        return DsfrColorDecisions.textDefaultError(context);
      case DsfrLabelType.novelties:
        return DsfrColorDecisionsExtension.textDefaultNew(context);
      case DsfrLabelType.custom:
        return textCustomColor == null ? throw UnimplementedError('textCustomColor is mandatory') : textCustomColor!;
    }
  }

  IconData _getIcon() {
    switch (type) {
      case DsfrLabelType.information:
        return DsfrIcons.systemFrInfoFill;
      case DsfrLabelType.warning:
        return DsfrIcons.systemFrWarningFill;
      case DsfrLabelType.success:
        return DsfrIcons.systemCheckboxCircleFill;
      case DsfrLabelType.error:
        return DsfrIcons.systemFrErrorFill;
      case DsfrLabelType.novelties:
        return DsfrIcons.weatherFlashlightFill;
      case DsfrLabelType.custom:
        throw UnimplementedError('custom with icon is not implemented');
    }
  }
}
