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

  accessibilityTest(componentName: 'Radio sm', themeMode: ThemeMode.light, child: radioSm);
  accessibilityTest(componentName: 'Radio sm', themeMode: ThemeMode.dark, child: radioSm);

  accessibilityTest(componentName: 'Radio md', themeMode: ThemeMode.light, child: radioMd);
  accessibilityTest(componentName: 'Radio md', themeMode: ThemeMode.dark, child: radioMd);

  accessibilityTest(componentName: 'Radio sm success', themeMode: ThemeMode.light, child: radioSmSuccess);
  accessibilityTest(componentName: 'Radio sm success', themeMode: ThemeMode.dark, child: radioSmSuccess);

  accessibilityTest(componentName: 'Radio md success', themeMode: ThemeMode.light, child: radioMdSuccess);
  accessibilityTest(componentName: 'Radio md success', themeMode: ThemeMode.dark, child: radioMdSuccess);

  accessibilityTest(componentName: 'Radio sm error', themeMode: ThemeMode.light, child: radioSmError);
  accessibilityTest(componentName: 'Radio sm error', themeMode: ThemeMode.dark, child: radioSmError);

  accessibilityTest(componentName: 'Radio md error', themeMode: ThemeMode.light, child: radioMdError);
  accessibilityTest(componentName: 'Radio md error', themeMode: ThemeMode.dark, child: radioMdError);

  // FIXME: skip, contraste trop faible
  accessibilityTest(componentName: 'Radio sm disabled', themeMode: ThemeMode.light, child: radioSmDisabled, skip: true);
  accessibilityTest(componentName: 'Radio sm disabled', themeMode: ThemeMode.dark, child: radioSmDisabled, skip: true);

  accessibilityTest(componentName: 'Radio md disabled', themeMode: ThemeMode.light, child: radioMdDisabled, skip: true);
  accessibilityTest(componentName: 'Radio md disabled', themeMode: ThemeMode.dark, child: radioMdDisabled, skip: true);
}
