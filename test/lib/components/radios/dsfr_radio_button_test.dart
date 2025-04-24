import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/radios/dsfr_radio_button.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  Widget radioSm = DsfrRadioButton<int>(
    label: 'Label',
    size: DsfrComponentSize.sm,
    value: 0,
    groupValue: 0,
    onChanged: (final value) {},
  );
  Widget radioMd = DsfrRadioButton<int>(
    label: 'Label',
    size: DsfrComponentSize.md,
    value: 0,
    groupValue: 0,
    onChanged: (final value) {},
  );
  Widget radioSmDisabled = DsfrRadioButton<int>(
    label: 'Label',
    size: DsfrComponentSize.sm,
    enabled: false,
    value: 0,
    groupValue: 0,
  );
  Widget radioMdDisabled = DsfrRadioButton<int>(
    label: 'Label',
    size: DsfrComponentSize.md,
    enabled: false,
    value: 0,
    groupValue: 0,
  );
  Widget radioSmSuccess = DsfrRadioButton<int>(
    label: 'Label',
    size: DsfrComponentSize.sm,
    value: 0,
    groupValue: 0,
    componentState: DsfrComponentState.success(),
    onChanged: (final value) {},
  );
  Widget radioMdSuccess = DsfrRadioButton<int>(
    label: 'Label',
    size: DsfrComponentSize.md,
    value: 0,
    groupValue: 0,
    componentState: DsfrComponentState.success(),
    onChanged: (final value) {},
  );
  Widget radioSmError = DsfrRadioButton<int>(
    label: 'Label',
    size: DsfrComponentSize.sm,
    value: 0,
    groupValue: 0,
    componentState: DsfrComponentState.error(errorMessage: "Error Message"),
    onChanged: (final value) {},
  );
  Widget radioMdError = DsfrRadioButton<int>(
    label: 'Label',
    size: DsfrComponentSize.md,
    value: 0,
    groupValue: 0,
    componentState: DsfrComponentState.error(errorMessage: "Error Message"),
    onChanged: (final value) {},
  );

  accessibilityTest(componentName: 'Radio sm', isLightMode: true, child: radioSm);
  accessibilityTest(componentName: 'Radio sm', isLightMode: false, child: radioSm);

  accessibilityTest(componentName: 'Radio md', isLightMode: true, child: radioMd);
  accessibilityTest(componentName: 'Radio md', isLightMode: false, child: radioMd);

  accessibilityTest(componentName: 'Radio sm success', isLightMode: true, child: radioSmSuccess);
  accessibilityTest(componentName: 'Radio sm success', isLightMode: false, child: radioSmSuccess);

  accessibilityTest(componentName: 'Radio md success', isLightMode: true, child: radioMdSuccess);
  accessibilityTest(componentName: 'Radio md success', isLightMode: false, child: radioMdSuccess);

  accessibilityTest(componentName: 'Radio sm error', isLightMode: true, child: radioSmError);
  accessibilityTest(componentName: 'Radio sm error', isLightMode: false, child: radioSmError);

  accessibilityTest(componentName: 'Radio md error', isLightMode: true, child: radioMdError);
  accessibilityTest(componentName: 'Radio md error', isLightMode: false, child: radioMdError);

  // FIXME: skip, contraste trop faible
  accessibilityTest(componentName: 'Radio sm disabled', isLightMode: true, child: radioSmDisabled, skip: true);
  accessibilityTest(componentName: 'Radio sm disabled', isLightMode: false, child: radioSmDisabled, skip: true);

  accessibilityTest(componentName: 'Radio md disabled', isLightMode: true, child: radioMdDisabled, skip: true);
  accessibilityTest(componentName: 'Radio md disabled', isLightMode: false, child: radioMdDisabled, skip: true);
}
