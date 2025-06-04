import 'package:flutter_dsfr/src/atoms/dsfr_vertical_bar_widget.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter/material.dart';

class DsfrHighlight extends StatelessWidget {
  const DsfrHighlight({super.key, required this.text, required this.size});

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
            child: Text(text, style: getStyle(context)),
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
