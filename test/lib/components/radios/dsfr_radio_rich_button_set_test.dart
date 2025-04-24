import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/radios/dsfr_radio_button_group.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  group('Groupe radio riche', () {
    Widget radioSet = DsfrRadioButtonGroup.rich(
      title: 'title',
      values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
      onCallback: (final p0) {},
    );

    Widget radioSetSuccess = DsfrRadioButtonGroup.rich(
      title: 'title',
      values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
      onCallback: (final p0) {},
      componentState: DsfrComponentState.success(message: 'success'),
    );

    Widget radioSetError = DsfrRadioButtonGroup.rich(
      title: 'title',
      values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
      onCallback: (final p0) {},
      componentState: DsfrComponentState.error(errorMessage: 'error message'),
    );

    Widget radioSetDisabled = DsfrRadioButtonGroup.rich(
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
    accessibilityTest(
        componentName: 'Group Radio rich disabled', isLightMode: true, child: radioSetDisabled, skip: true);
    accessibilityTest(
      componentName: 'Group Radio rich disabled',
      isLightMode: false,
      child: radioSetDisabled,
      skip: true,
    );
  });

  group('Groupe radio simple', () {
    Widget radioSet = DsfrRadioButtonGroup.simple(
      title: 'title',
      values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
      onCallback: (final p0) {},
    );

    Widget radioSetSuccess = DsfrRadioButtonGroup.simple(
      title: 'title',
      values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
      onCallback: (final p0) {},
      componentState: DsfrComponentState.success(message: 'success'),
    );

    Widget radioSetError = DsfrRadioButtonGroup.simple(
      title: 'title',
      values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
      onCallback: (final p0) {},
      componentState: DsfrComponentState.error(errorMessage: 'error message'),
    );

    Widget radioSetDisabled = DsfrRadioButtonGroup.simple(
      title: 'title',
      values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
      onCallback: (final p0) {},
      enabled: false,
    );

    accessibilityTest(componentName: 'Group Radio', isLightMode: true, child: radioSet);
    accessibilityTest(componentName: 'Group Radio', isLightMode: false, child: radioSet);

    //FIXME: skip, zone de tap trop petite
    accessibilityTest(componentName: 'Group Radio success', isLightMode: true, child: radioSetSuccess, skip: true);
    accessibilityTest(componentName: 'Group Radio success', isLightMode: false, child: radioSetSuccess, skip: true);
    accessibilityTest(componentName: 'Group Radio error', isLightMode: true, child: radioSetError, skip: true);
    accessibilityTest(componentName: 'Group Radio error', isLightMode: false, child: radioSetError, skip: true);

    //FIXME: skip, contraste trop faible
    accessibilityTest(componentName: 'Group Radio disabled', isLightMode: true, child: radioSetDisabled, skip: true);
    accessibilityTest(
      componentName: 'Group Radio disabled',
      isLightMode: false,
      child: radioSetDisabled,
      skip: true,
    );
  });
}
