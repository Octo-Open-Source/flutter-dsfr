import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

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

class DsfrAlert extends StatefulWidget {
  final DsfrAlertType type;
  final String? title;
  final String? description;
  final bool isDismissible;
  final String closeLabel;
  final Function()? onClose;

  const DsfrAlert({
    super.key,
    required this.type,
    this.title,
    this.description,
    this.isDismissible = false,
    this.closeLabel = 'Fermer',
    this.onClose,
  });

  @override
  State<DsfrAlert> createState() => _DsfrAlertState();
}

class _DsfrAlertState extends State<DsfrAlert> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    if (!isVisible) {
      return SizedBox.shrink();
    }
    return DecoratedBox(
      decoration: BoxDecoration(border: Border.all(color: widget.type.getBorderColor(context))),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(color: widget.type.getBackgroundColor(context)),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                    child: Icon(widget.type.icon, color: DsfrColorDecisions.backgroundDefaultGrey(context)),
                  )),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    if (widget.title != null)
                      Text(
                        widget.title!,
                        style: DsfrTextStyle.headline5(color: DsfrColorDecisions.textTitleGrey(context)),
                      ),
                    if (widget.description != null)
                      Text(
                        widget.description!,
                        style: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDefaultGrey(context)),
                      ),
                  ],
                ),
              ),
            ),
            if (widget.isDismissible) ...[
              Spacer(),
              Align(
                alignment: Alignment.topRight,
                child: Semantics(
                  button: true,
                  label: widget.closeLabel,
                  child: InkWell(
                    onTap: () => {
                      setState(() {
                        isVisible = false;
                        widget.onClose?.call();
                      })
                    },
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
          ],
        ),
      ),
    );
  }
}
