import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class DsfrStepper extends StatelessWidget {
  const DsfrStepper({
    super.key,
    required this.currentStep,
    required this.stepsCount,
    required this.stepTitle,
    this.nextStepTitle,
  }) : assert(currentStep > 0 && currentStep <= stepsCount);

  final String stepTitle;
  final String? nextStepTitle;
  final int currentStep;
  final int stepsCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: DsfrSpacings.s3v,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: DsfrSpacings.s1v,
          children: [
            Text(
              "Étape $currentStep sur $stepsCount",
              style: DsfrTextStyle.bodySm(color: DsfrColorDecisions.textDefaultGrey(context)),
            ),
            Text(stepTitle, style: DsfrTextStyle.bodyXlBold(color: DsfrColorDecisions.textTitleGrey(context))),
          ],
        ),
        Row(
          spacing: 8,
          children: [
            for (var i = 1; i <= stepsCount; i++)
              Expanded(
                child: Container(
                  height: 8,
                  color: i <= currentStep
                      ? DsfrColorDecisions.backgroundActiveBlueFrance(context)
                      : DsfrColorDecisions.backgroundContrastGrey(context),
                ),
              ),
          ],
        ),
        if (nextStepTitle != null && currentStep != stepsCount)
          RichText(
            text: TextSpan(
              text: 'Étape suivante : ',
              style: DsfrTextStyle.bodyXsBold(color: DsfrColorDecisions.textMentionGrey(context)),
              children: [
                TextSpan(
                  text: nextStepTitle,
                  style: DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textMentionGrey(context)),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
