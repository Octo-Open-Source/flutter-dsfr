import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/components/radios/dsfr_radio_rich_button.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  Widget radio = DsfrRadioRichButton<int>(
    title: 'Un',
    value: 0,
    groupValue: 0,
    onChanged: (final value) {},
  );
  Widget radioDisabled = DsfrRadioRichButton<int>(
    title: 'Un',
    value: 0,
    groupValue: 0,
    onChanged: (final value) {},
    enabled: false,
  );
  Widget radioSuccess = DsfrRadioRichButton<int>(
    title: 'Un',
    value: 0,
    groupValue: 0,
    onChanged: (final value) {},
    state: DsfrComponentStateEnum.success,
  );
  Widget radioError = DsfrRadioRichButton<int>(
    title: 'Un',
    value: 0,
    groupValue: 0,
    onChanged: (final value) {},
    state: DsfrComponentStateEnum.error,
  );

  accessibilityTest(componentName: 'Radio rich', isLightMode: true, child: radio);
  accessibilityTest(componentName: 'Radio rich', isLightMode: false, child: radio);

  accessibilityTest(componentName: 'Radio rich success', isLightMode: true, child: radioSuccess);
  accessibilityTest(componentName: 'Radio rich success', isLightMode: false, child: radioSuccess);

  accessibilityTest(componentName: 'Radio rich error', isLightMode: true, child: radioError);
  accessibilityTest(componentName: 'Radio rich error', isLightMode: false, child: radioError);

  //FIXME: skip, contraste trop faible
  accessibilityTest(componentName: 'Radio rich disabled', isLightMode: true, child: radioDisabled, skip: true);
  accessibilityTest(componentName: 'Radio rich disabled', isLightMode: false, child: radioDisabled, skip: true);
}
