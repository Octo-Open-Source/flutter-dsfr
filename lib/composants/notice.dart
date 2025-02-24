import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions_extension.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';

enum DsfrNoticeType {
  genericInfo,
  genericWarning,
  genericAlert,
  weatherOrange,
  weatherRed,
  weatherPurple,
  alertAttack,
  alertCallForWitnesses,
  alertTechnology,
}

class DsfrNotice extends StatelessWidget {
  const DsfrNotice({
    super.key,
    required this.titre,
    required this.description,
    this.type = DsfrNoticeType.genericInfo,
    required this.onClose,
  });

  final String titre;
  final String description;
  final DsfrNoticeType type;
  final VoidCallback? onClose;

  @override
  Widget build(final context) {
    var color = _getTextColor(context);
    var textStyle = DsfrTextStyle.bodySm(color: color);

    return ColoredBox(
      color: _getBackgroundColor(context),
      child: Padding(
        padding: const EdgeInsets.only(
          left: DsfrSpacings.s2w,
          bottom: DsfrSpacings.s2w,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: DsfrSpacings.s3v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(_getIcon(), color: color),
                        const SizedBox(width: DsfrSpacings.s1w),
                        Expanded(
                          child: Text(
                            titre,
                            style: textStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(description, style: textStyle),
                  ],
                ),
              ),
            ),
            const SizedBox(width: DsfrSpacings.s1w),
            IconButton(
              iconSize: DsfrSpacings.s2w,
              onPressed: onClose,
              icon: Icon(
                DsfrIcons.systemCloseLine,
                color: color,
                semanticLabel: 'Masquer le message',
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getIcon() {
    switch (type) {
      case DsfrNoticeType.genericInfo:
        return DsfrIcons.systemFrInfoFill;
      case DsfrNoticeType.genericWarning:
        return DsfrIcons.systemFrWarningFill;
      case DsfrNoticeType.genericAlert:
        return DsfrIcons.systemErrorWarningFill;
      case DsfrNoticeType.weatherOrange:
        return DsfrIcons.weatherHeavyShowersFill;
      case DsfrNoticeType.weatherRed:
        return DsfrIcons.weatherTornadoFill;
      case DsfrNoticeType.weatherPurple:
        return DsfrIcons.weatherTyphoonFill;
      case DsfrNoticeType.alertAttack:
        return DsfrIcons.systemFrAlertWarning2Fill;
      case DsfrNoticeType.alertCallForWitnesses:
      case DsfrNoticeType.alertTechnology:
      return DsfrIcons.systemFrWarningFill;
    }
  }

  Color _getBackgroundColor(BuildContext context) {
    switch (type) {
      case DsfrNoticeType.genericInfo:
        return DsfrColorDecisions.backgroundContrastInfo(context);
      case DsfrNoticeType.genericWarning:
        return DsfrColorDecisions.backgroundContrastWarning(context);
      case DsfrNoticeType.genericAlert:
        return DsfrColorDecisions.backgroundContrastError(context);
      case DsfrNoticeType.weatherOrange:
        return DsfrColorDecisions.backgroundContrastWarning(context);
      case DsfrNoticeType.weatherRed:
        return DsfrColorDecisions.backgroundFlatError(context);
      case DsfrNoticeType.weatherPurple:
        return DsfrColorDecisionsExtension.backgroundGlycine(context);
      case DsfrNoticeType.alertAttack:
        return DsfrColorDecisions.backgroundFlatError(context);
      case DsfrNoticeType.alertCallForWitnesses:
      case DsfrNoticeType.alertTechnology:
        return DsfrColorDecisions.backgroundFlatGrey(context);
    }
  }

  Color _getTextColor(BuildContext context) {
    switch (type) {
      case DsfrNoticeType.genericInfo:
        return DsfrColorDecisions.textDefaultInfo(context);
      case DsfrNoticeType.genericWarning:
        return DsfrColorDecisions.textDefaultWarning(context);
      case DsfrNoticeType.genericAlert:
        return DsfrColorDecisions.textActionHighError(context);
      case DsfrNoticeType.weatherOrange:
        return DsfrColorDecisions.textActionHighWarning(context);
      case DsfrNoticeType.weatherRed:
      case DsfrNoticeType.weatherPurple:
      case DsfrNoticeType.alertAttack:
      case DsfrNoticeType.alertCallForWitnesses:
      case DsfrNoticeType.alertTechnology:
        return DsfrColorDecisions.textInvertedGrey(context);
    }
  }
}
