import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/radios/dsfr_radio_rich_button.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  Widget radio = DsfrRadioRichButton<int>(
    title: 'Un',
    value: 0,
    groupValue: 0,
    size: DsfrComponentSize.md,
    onChanged: (final value) {},
  );
  Widget radioDisabled = DsfrRadioRichButton<int>(
    title: 'Un',
    value: 0,
    groupValue: 0,
    size: DsfrComponentSize.md,
    onChanged: (final value) {},
    enabled: false,
  );
  Widget radioSuccess = DsfrRadioRichButton<int>(
    title: 'Un',
    value: 0,
    groupValue: 0,
    size: DsfrComponentSize.md,
    onChanged: (final value) {},
    state: DsfrComponentStateEnum.success,
  );
  Widget radioError = DsfrRadioRichButton<int>(
    title: 'Un',
    value: 0,
    groupValue: 0,
    size: DsfrComponentSize.md,
    onChanged: (final value) {},
    state: DsfrComponentStateEnum.error,
  );

  accessibilityTest(componentName: 'Radio rich', themeMode: ThemeMode.light, child: radio);
  accessibilityTest(componentName: 'Radio rich', themeMode: ThemeMode.dark, child: radio);

  accessibilityTest(componentName: 'Radio rich success', themeMode: ThemeMode.light, child: radioSuccess);
  accessibilityTest(componentName: 'Radio rich success', themeMode: ThemeMode.dark, child: radioSuccess);

  accessibilityTest(componentName: 'Radio rich error', themeMode: ThemeMode.light, child: radioError);
  accessibilityTest(componentName: 'Radio rich error', themeMode: ThemeMode.dark, child: radioError);

  //FIXME: skip, contraste trop faible
  accessibilityTest(componentName: 'Radio rich disabled', themeMode: ThemeMode.light, child: radioDisabled, skip: true);
  accessibilityTest(componentName: 'Radio rich disabled', themeMode: ThemeMode.dark, child: radioDisabled, skip: true);
}
