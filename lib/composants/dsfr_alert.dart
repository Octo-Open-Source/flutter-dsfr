import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

enum DsfrAlertType {
  info,
  warning,
  error,
  success,
}

extension DsfrAlertTypeExtension on DsfrAlertType {
  IconData get icon {
    switch (this) {
      case DsfrAlertType.info:
        return DsfrIcons.systemFrInfoFill;
      case DsfrAlertType.warning:
        return DsfrIcons.systemFrWarningFill;
      case DsfrAlertType.error:
        return DsfrIcons.systemFrErrorFill;
      case DsfrAlertType.success:
        return DsfrIcons.systemFrSuccessFill;
    }
  }

  Color getBackgroundColor(BuildContext context) {
    switch (this) {
      case DsfrAlertType.info:
        return DsfrColorDecisions.backgroundFlatInfo(context);
      case DsfrAlertType.warning:
        return DsfrColorDecisions.backgroundFlatWarning(context);
      case DsfrAlertType.error:
        return DsfrColorDecisions.backgroundFlatError(context);
      case DsfrAlertType.success:
        return DsfrColorDecisions.backgroundFlatSuccess(context);
    }
  }

  Color getBorderColor(BuildContext context) {
    switch (this) {
      case DsfrAlertType.info:
        return DsfrColorDecisions.borderPlainInfo(context);
      case DsfrAlertType.warning:
        return DsfrColorDecisions.borderPlainWarning(context);
      case DsfrAlertType.error:
        return DsfrColorDecisions.borderPlainError(context);
      case DsfrAlertType.success:
        return DsfrColorDecisions.borderPlainSuccess(context);
    }
  }
}

class DsfrAlert extends StatelessWidget {
  final DsfrAlertType type;
  final String? title;
  final String? description;
  final bool isDismissible;
  final String closeLabel;

  const DsfrAlert({
    super.key,
    required this.type,
    this.title,
    this.description,
    this.isDismissible = false,
    this.closeLabel = 'Fermer',
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(border: Border.all(color: type.getBorderColor(context))),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(color: type.getBackgroundColor(context)),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                    child: Icon(type.icon, color: DsfrColorDecisions.backgroundDefaultGrey(context)),
                  )),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    if (title != null)
                      Text(
                        title!,
                        style: DsfrTextStyle.headline5(color: DsfrColorDecisions.textTitleGrey(context)),
                      ),
                    if (description != null)
                      Text(
                        description!,
                        style: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDefaultGrey(context)),
                      ),
                  ],
                ),
              ),
            ),
            if (isDismissible) ...[
              Spacer(),
              Align(
                alignment: Alignment.topRight,
                child: DsfrButton(
                  iconSemanticLabel: closeLabel,
                  icon: DsfrIcons.systemCloseLine,
                  iconLocation: DsfrButtonIconLocation.right,
                  variant: DsfrButtonVariant.tertiaryWithoutBorder,
                  size: DsfrComponentSize.sm,
                  onPressed: () => {}, //TODO
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
