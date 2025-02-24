import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter/material.dart';

class DsfrNotice extends StatelessWidget {
  const DsfrNotice({
    super.key,
    required this.titre,
    required this.description,
    required this.onClose,
  });

  final String titre;
  final String description;
  final VoidCallback? onClose;

  @override
  Widget build(final context) {
    var color = DsfrColorDecisions.textDefaultInfo(context);
    var textStyle = DsfrTextStyle.bodySm(color: color);

    return ColoredBox(
      color: DsfrColorDecisions.backgroundContrastInfo(context),
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
                        Icon(DsfrIcons.systemFrInfoFill, color: color),
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
}
