import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

enum DsfrAlertType {
  info,
  warning,
  error,
  success,
}

extension DsfrAlertTypeExtension on DsfrAlertType {
  IconData get icon => switch (this) {
        DsfrAlertType.info => DsfrIcons.systemFrInfoFill,
        DsfrAlertType.warning => DsfrIcons.systemFrWarningFill,
        DsfrAlertType.error => DsfrIcons.systemFrErrorFill,
        DsfrAlertType.success => DsfrIcons.systemFrSuccessFill
      };

  Color getBackgroundColor(BuildContext context) => switch (this) {
        DsfrAlertType.info => DsfrColorDecisions.backgroundFlatInfo(context),
        DsfrAlertType.warning => DsfrColorDecisions.backgroundFlatWarning(context),
        DsfrAlertType.error => DsfrColorDecisions.backgroundFlatError(context),
        DsfrAlertType.success => DsfrColorDecisions.backgroundFlatSuccess(context)
      };

  Color getBorderColor(BuildContext context) => switch (this) {
        DsfrAlertType.info => DsfrColorDecisions.borderPlainInfo(context),
        DsfrAlertType.warning => DsfrColorDecisions.borderPlainWarning(context),
        DsfrAlertType.error => DsfrColorDecisions.borderPlainError(context),
        DsfrAlertType.success => DsfrColorDecisions.borderPlainSuccess(context)
      };
}

class DsfrAlert extends StatelessWidget {
  final DsfrAlertType type;
  final String? title;
  final String? description;
  final Function()? onClose;
  final String semanticCloseLabel;

  const DsfrAlert({
    super.key,
    required this.type,
    this.title,
    this.description,
    this.onClose,
    this.semanticCloseLabel = 'Fermer',
  }) : assert(title != null || description != null);

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
            if (onClose != null)
              Align(
                alignment: Alignment.topRight,
                child: Semantics(
                  button: true,
                  label: semanticCloseLabel,
                  child: InkWell(
                    onTap: onClose,
                    child: SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Icon(DsfrIcons.systemCloseLine, size: 16),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
