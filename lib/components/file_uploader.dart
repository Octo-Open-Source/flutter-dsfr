import 'package:flutter/material.dart';
import 'package:flutter_dsfr/atoms/composant_state_widget.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class FileUploader extends StatelessWidget {
  final String title;
  final String description;
  final String buttonLabel;
  final bool disabled;
  final DsfrComposantState componentState;

  const FileUploader({
    super.key,
    this.title = 'Ajouter un fichier',
    required this.description,
    this.buttonLabel = 'Parcourir...',
    this.disabled = false,
    this.componentState = const DsfrComposantState.none(),
  });

  Color _getTitleColor(BuildContext context) => switch ((disabled, componentState.state)) {
        (true, _) => DsfrColorDecisions.textDisabledGrey(context),
        (false, DsfrComposantStateEnum.error) => DsfrColorDecisions.textDefaultError(context),
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
            Material(
              borderRadius: BorderRadius.circular(4),
              color: disabled
                  ? DsfrColorDecisions.backgroundDisabledGrey(context)
                  : DsfrColorDecisions.backgroundContrastGrey(context),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Text(
                    buttonLabel,
                    style: DsfrTextStyle.bodySm(
                      color: disabled
                          ? DsfrColorDecisions.textDisabledGrey(context)
                          : DsfrColorDecisions.textDefaultGrey(context),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Aucun fichier selectionné.',
              style: DsfrTextStyle.bodySm(
                color: disabled
                    ? DsfrColorDecisions.textDisabledGrey(context)
                    : DsfrColorDecisions.textDefaultGrey(context),
              ),
            ),
          ],
        ),
        if (componentState.state == DsfrComposantStateEnum.error)
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
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
                    componentState.text!,
                    style: DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textDefaultError(context)),
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
