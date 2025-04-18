import 'package:flutter_dsfr/atoms/dsfr_vertical_bar_widget.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';

class DsfrHighlight extends StatelessWidget {
  const DsfrHighlight.sm({
    super.key,
    required this.text,
  }) : size = DsfrComponentSize.sm;

  const DsfrHighlight.md({
    super.key,
    required this.text,
  }) : size = DsfrComponentSize.md;

  const DsfrHighlight.lg({
    super.key,
    required this.text,
  }) : size = DsfrComponentSize.lg;

  final String text;
  final DsfrComponentSize size;

  @override
  Widget build(final context) => IntrinsicHeight(
        child: Row(
          children: [
            DsfrVerticalBarWidget(componentState: DsfrComponentState.highlight()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: DsfrSpacings.s2w),
                child: Text(
                  text,
                  style: getStyle(context),
                ),
              ),
            ),
          ],
        ),
      );

  DsfrTextStyle getStyle(BuildContext context) => switch (size) {
        DsfrComponentSize.lg => DsfrTextStyle.bodyLg(color: DsfrColorDecisions.textDefaultGrey(context)),
        DsfrComponentSize.md => DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDefaultGrey(context)),
        DsfrComponentSize.sm => DsfrTextStyle.bodySm(color: DsfrColorDecisions.textDefaultGrey(context)),
      };
}
