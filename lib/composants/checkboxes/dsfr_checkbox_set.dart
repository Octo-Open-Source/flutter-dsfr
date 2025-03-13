import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/atoms/composant_state_widget.dart';
import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/composants/checkboxes/checkbox.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DsfrCheckboxSet extends StatelessWidget {
  final List<DsfrCheckbox> checkboxes;
  final String label;
  final DsfrComposantState composantState;

  const DsfrCheckboxSet({
    super.key,
    required this.checkboxes,
    required this.label,
    this.composantState = const DsfrComposantState.none(),
  });

  @override
  Widget build(BuildContext context) {
    return DsfrFormState(
      composantState: composantState,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: DsfrSpacings.s2w,
        children: [
          Text(
            label,
            style: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDefaultGrey(context)),
          ),
          // TODO: add title
          ...checkboxes
        ],
      ),
    );
  }
}
