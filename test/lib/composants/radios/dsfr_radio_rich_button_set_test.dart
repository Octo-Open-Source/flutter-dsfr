import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/radios/dsfr_radio_rich_button_group.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  Widget radioSet = DsfrRadioRichButtonGroup(
    title: 'title',
    values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
    onCallback: (final p0) {},
  );

  Widget radioSetSuccess = DsfrRadioRichButtonGroup(
    title: 'title',
    values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
    onCallback: (final p0) {},
    composantState: DsfrComposantState.success(message: 'success'),
  );

  Widget radioSetError = DsfrRadioRichButtonGroup(
    title: 'title',
    values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
    onCallback: (final p0) {},
    composantState: DsfrComposantState.error(errorMessage: 'error message'),
  );

  Widget radioSetDisabled = DsfrRadioRichButtonGroup(
    title: 'title',
    values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
    onCallback: (final p0) {},
    enabled: false,
  );

  accessibilityTest(componentName: 'Group Radio rich ', isLightMode: true, child: radioSet);
  accessibilityTest(componentName: 'Group Radio rich', isLightMode: false, child: radioSet);

  accessibilityTest(componentName: 'Group Radio rich success', isLightMode: true, child: radioSetSuccess);
  accessibilityTest(componentName: 'Group Radio rich success', isLightMode: false, child: radioSetSuccess);

  accessibilityTest(componentName: 'Group Radio rich error', isLightMode: true, child: radioSetError);
  accessibilityTest(componentName: 'Group Radio rich error', isLightMode: false, child: radioSetError);

  //FIXME: skip, contraste trop faible
  accessibilityTest(componentName: 'Group Radio rich disabled', isLightMode: true, child: radioSetDisabled, skip: true);
  accessibilityTest(
    componentName: 'Group Radio rich disabled',
    isLightMode: false,
    child: radioSetDisabled,
    skip: true,
  );
}
