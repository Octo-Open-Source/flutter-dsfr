import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/composants/checkboxes/dsfr_simple_checkbox.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DsfrCheckboxSet extends StatelessWidget {
  final List<DsfrCheckbox> checkboxes;
  final String label;
  final String? description;
  final DsfrComposantState composantState;

  const DsfrCheckboxSet({
    super.key,
    required this.checkboxes,
    required this.label,
    this.description,
    this.composantState = const DsfrComposantState.none(),
  });

  @override
  Widget build(BuildContext context) {
    return DsfrFormState(
      composantState: composantState,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: DsfrTextStyle.bodyMd(color: getTextColor(context, composantState.state)),
          ),
          SizedBox(height: description != null ? DsfrSpacings.s1w : DsfrSpacings.s2w),
          description != null
              ? Column(
                  children: [
                    Text(
                      description!,
                      style: DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textMentionGrey(context)),
                    ),
                    const SizedBox(height: DsfrSpacings.s2w),
                  ],
                )
              : const SizedBox.shrink(),
          Column(
            spacing: DsfrSpacings.s2w,
            children: checkboxes.map((final checkbox) {
              return DsfrSimpleCheckbox(
                label: checkbox.label,
                value: checkbox.value,
                onChanged: checkbox.onChanged,
                enabled: checkbox.enabled,
                description: checkbox.description,
                state: composantState.state,
                padding: checkbox.padding,
                focusNode: checkbox.focusNode,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
