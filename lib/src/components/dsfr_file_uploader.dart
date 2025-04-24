import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class DsfrFileUploader extends StatelessWidget {
  final String title;
  final String description;
  final String buttonLabel;
  final String fileIndicatorLabel;
  final bool disabled;
  final DsfrComponentState componentState;
  final Function() onBrowse;

  const DsfrFileUploader({
    super.key,
    required this.description,
    this.title = 'Ajouter un fichier',
    this.buttonLabel = 'Parcourir...',
    this.fileIndicatorLabel = 'Aucun fichier selectionné.',
    this.disabled = false,
    this.componentState = const DsfrComponentState.none(),
    required this.onBrowse,
  });

  Color _getTitleColor(BuildContext context) => switch ((disabled, componentState.state)) {
        (true, _) => DsfrColorDecisions.textDisabledGrey(context),
        (false, DsfrComponentState.error) => DsfrColorDecisions.textDefaultError(context),
        (false, _) => DsfrColorDecisions.textLabelGrey(context)
      };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: DsfrTextStyle.bodyMd(color: _getTitleColor(context)),
        ),
        SizedBox(height: 12),
        Text(
          description,
          style: DsfrTextStyle.bodyXs(
            color:
                disabled ? DsfrColorDecisions.textDisabledGrey(context) : DsfrColorDecisions.textMentionGrey(context),
          ),
        ),
        SizedBox(height: 16),
        Row(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _BrowseButton(
              disabled: disabled,
              onBrowse: onBrowse,
              buttonLabel: buttonLabel,
            ),
            Text(
              fileIndicatorLabel,
              style: DsfrTextStyle.bodySm(
                color: disabled
                    ? DsfrColorDecisions.textDisabledGrey(context)
                    : DsfrColorDecisions.textDefaultGrey(context),
              ),
            ),
          ],
        ),
        if (componentState.state == DsfrComponentStateEnum.error)
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: _ErrorNotice(message: componentState.text!),
          )
      ],
    );
  }
}

class _BrowseButton extends StatelessWidget {
  final bool disabled;
  final Function() onBrowse;
  final String buttonLabel;

  const _BrowseButton({required this.disabled, required this.onBrowse, required this.buttonLabel});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(4),
      color: disabled
          ? DsfrColorDecisions.backgroundDisabledGrey(context)
          : DsfrColorDecisions.backgroundContrastGrey(context),
      child: InkWell(
        onTap: onBrowse,
        borderRadius: BorderRadius.circular(4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            buttonLabel,
            style: DsfrTextStyle.bodySm(
              color:
                  disabled ? DsfrColorDecisions.textDisabledGrey(context) : DsfrColorDecisions.textDefaultGrey(context),
            ),
          ),
        ),
      ),
    );
  }
}

class _ErrorNotice extends StatelessWidget {
  final String message;

  const _ErrorNotice({required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          DsfrIcons.systemFrErrorFill,
          color: DsfrColorDecisions.borderPlainError(context),
          size: 16,
        ),
        const SizedBox(width: DsfrSpacings.s1v),
        Flexible(
          child: Text(
            message,
            style: DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textDefaultError(context)),
          ),
        ),
      ],
    );
  }
}
