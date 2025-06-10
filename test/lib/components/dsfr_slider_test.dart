import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/sliders/dsfr_range_slider.dart';
import 'package:flutter_dsfr/src/components/sliders/dsfr_slider.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  group('Slider taille SM', () {
    var dsfrSlider = DsfrSlider(label: 'label', value: 0.5, onChanged: (double value) {}, size: DsfrComponentSize.sm);
    var dsfrSliderWithDescription = DsfrSlider(
      label: 'label',
      description: 'description',
      value: 0.5,
      onChanged: (double value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrSliderError = DsfrSlider(
      label: 'label',
      value: 0.5,
      componentState: DsfrComponentState.error(errorMessage: 'Erreur'),
      onChanged: (double value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrSliderSuccess = DsfrSlider(
      label: 'label',
      value: 0.5,
      componentState: DsfrComponentState.success(message: 'Succès'),
      onChanged: (double value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrSliderDisabled = DsfrSlider(label: 'label', value: 0.5, enabled: false, size: DsfrComponentSize.sm);

    accessibilityTest(componentName: 'slider SM', themeMode: ThemeMode.light, child: dsfrSlider);
    accessibilityTest(componentName: 'slider SM', themeMode: ThemeMode.dark, child: dsfrSlider);

    accessibilityTest(
      componentName: 'slider SM avec une description',
      themeMode: ThemeMode.light,
      child: dsfrSliderWithDescription,
    );
    accessibilityTest(
      componentName: 'slider SM avec une description',
      themeMode: ThemeMode.dark,
      child: dsfrSliderWithDescription,
    );

    accessibilityTest(componentName: 'slider SM Error', themeMode: ThemeMode.light, child: dsfrSliderError);
    accessibilityTest(componentName: 'slider SM Error', themeMode: ThemeMode.dark, child: dsfrSliderError);

    accessibilityTest(componentName: 'slider SM Success', themeMode: ThemeMode.light, child: dsfrSliderSuccess);
    accessibilityTest(componentName: 'slider SM Success', themeMode: ThemeMode.dark, child: dsfrSliderSuccess);

    // FIXME: skip, contraste trop faible
    accessibilityTest(
      componentName: 'slider SM disabled',
      themeMode: ThemeMode.light,
      child: dsfrSliderDisabled,
      skip: true,
    );
    accessibilityTest(
      componentName: 'slider SM disabled',
      themeMode: ThemeMode.dark,
      child: dsfrSliderDisabled,
      skip: true,
    );
  });

  group('Slider taille MD', () {
    var dsfrSlider = DsfrSlider(label: 'label', value: 0.5, onChanged: (double value) {}, size: DsfrComponentSize.md);
    var dsfrSliderWithDescription = DsfrSlider(
      label: 'label',
      description: 'description',
      value: 0.5,
      onChanged: (double value) {},
      size: DsfrComponentSize.md,
    );
    var dsfrSliderError = DsfrSlider(
      label: 'label',
      value: 0.5,
      componentState: DsfrComponentState.error(errorMessage: 'Erreur'),
      onChanged: (double value) {},
      size: DsfrComponentSize.md,
    );
    var dsfrSliderSuccess = DsfrSlider(
      label: 'label',
      value: 0.5,
      componentState: DsfrComponentState.success(message: 'Succès'),
      onChanged: (double value) {},
      size: DsfrComponentSize.md,
    );
    var dsfrSliderDisabled = DsfrSlider(label: 'label', value: 0.5, enabled: false, size: DsfrComponentSize.md);

    accessibilityTest(componentName: 'slider MD', themeMode: ThemeMode.light, child: dsfrSlider);
    accessibilityTest(componentName: 'slider MD', themeMode: ThemeMode.dark, child: dsfrSlider);

    accessibilityTest(
      componentName: 'slider MD avec une description',
      themeMode: ThemeMode.light,
      child: dsfrSliderWithDescription,
    );
    accessibilityTest(
      componentName: 'slider MD avec une description',
      themeMode: ThemeMode.dark,
      child: dsfrSliderWithDescription,
    );

    accessibilityTest(componentName: 'slider MD Error', themeMode: ThemeMode.light, child: dsfrSliderError);
    accessibilityTest(componentName: 'slider MD Error', themeMode: ThemeMode.dark, child: dsfrSliderError);

    accessibilityTest(componentName: 'slider MD Success', themeMode: ThemeMode.light, child: dsfrSliderSuccess);
    accessibilityTest(componentName: 'slider MD Success', themeMode: ThemeMode.dark, child: dsfrSliderSuccess);

    // FIXME: skip, contraste trop faible
    accessibilityTest(
      componentName: 'slider MD disabled',
      themeMode: ThemeMode.light,
      child: dsfrSliderDisabled,
      skip: true,
    );
    accessibilityTest(
      componentName: 'slider MD disabled',
      themeMode: ThemeMode.dark,
      child: dsfrSliderDisabled,
      skip: true,
    );
  });

  group('Slider piste piste crantée', () {
    var dsfrSlider = DsfrSlider(
      label: 'label',
      divisions: 5,
      value: 0.5,
      onChanged: (double value) {},
      size: DsfrComponentSize.md,
    );
    var dsfrSliderWithDescription = DsfrSlider(
      label: 'label',
      divisions: 5,
      description: 'description',
      value: 0.5,
      onChanged: (double value) {},
      size: DsfrComponentSize.md,
    );
    var dsfrSliderError = DsfrSlider(
      label: 'label',
      divisions: 5,
      value: 0.5,
      componentState: DsfrComponentState.error(errorMessage: 'Erreur'),
      onChanged: (double value) {},
      size: DsfrComponentSize.md,
    );
    var dsfrSliderSuccess = DsfrSlider(
      label: 'label',
      divisions: 5,
      value: 0.5,
      componentState: DsfrComponentState.success(message: 'Succès'),
      onChanged: (double value) {},
      size: DsfrComponentSize.md,
    );
    var dsfrSliderDisabled = DsfrSlider(
      label: 'label',
      divisions: 5,
      value: 0.5,
      enabled: false,
      size: DsfrComponentSize.md,
    );

    accessibilityTest(componentName: 'slider piste crantée', themeMode: ThemeMode.light, child: dsfrSlider);
    accessibilityTest(componentName: 'slider piste crantée', themeMode: ThemeMode.dark, child: dsfrSlider);

    accessibilityTest(
      componentName: 'slider piste crantée avec une description',
      themeMode: ThemeMode.light,
      child: dsfrSliderWithDescription,
    );
    accessibilityTest(
      componentName: 'slider piste crantée avec une description',
      themeMode: ThemeMode.dark,
      child: dsfrSliderWithDescription,
    );

    accessibilityTest(componentName: 'slider piste crantée Error', themeMode: ThemeMode.light, child: dsfrSliderError);
    accessibilityTest(componentName: 'slider piste crantée Error', themeMode: ThemeMode.dark, child: dsfrSliderError);

    accessibilityTest(
      componentName: 'slider piste crantée Success',
      themeMode: ThemeMode.light,
      child: dsfrSliderSuccess,
    );
    accessibilityTest(
      componentName: 'slider piste crantée Success',
      themeMode: ThemeMode.dark,
      child: dsfrSliderSuccess,
    );

    // FIXME: skip, contraste trop faible
    accessibilityTest(
      componentName: 'slider piste crantée disabled',
      themeMode: ThemeMode.light,
      child: dsfrSliderDisabled,
      skip: true,
    );
    accessibilityTest(
      componentName: 'slider piste crantée disabled',
      themeMode: ThemeMode.dark,
      child: dsfrSliderDisabled,
      skip: true,
    );
  });

  group('Slider double taille SM', () {
    var dsfrRangeSlider = DsfrRangeSlider(
      label: 'label',
      values: RangeValues(0.25, 0.75),
      onChanged: (RangeValues value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrRangeSliderWithDescription = DsfrRangeSlider(
      label: 'label',
      description: 'description',
      values: RangeValues(0.25, 0.75),
      onChanged: (RangeValues value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrRangeSliderError = DsfrRangeSlider(
      label: 'label',
      values: RangeValues(0.25, 0.75),
      componentState: DsfrComponentState.error(errorMessage: 'Erreur'),
      onChanged: (RangeValues value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrRangeSliderSuccess = DsfrRangeSlider(
      label: 'label',
      values: RangeValues(0.25, 0.75),
      componentState: DsfrComponentState.success(message: 'Succès'),
      onChanged: (RangeValues value) {},
      size: DsfrComponentSize.sm,
    );
    var dsfrRangeSliderDisabled = DsfrRangeSlider(
      label: 'label',
      values: RangeValues(0.25, 0.75),
      enabled: false,
      size: DsfrComponentSize.sm,
    );

    accessibilityTest(componentName: 'slider SM', themeMode: ThemeMode.light, child: dsfrRangeSlider);
    accessibilityTest(componentName: 'slider SM', themeMode: ThemeMode.dark, child: dsfrRangeSlider);

    accessibilityTest(
      componentName: 'slider SM avec une description',
      themeMode: ThemeMode.light,
      child: dsfrRangeSliderWithDescription,
    );
    accessibilityTest(
      componentName: 'slider SM avec une description',
      themeMode: ThemeMode.dark,
      child: dsfrRangeSliderWithDescription,
    );

    accessibilityTest(componentName: 'slider SM Error', themeMode: ThemeMode.light, child: dsfrRangeSliderError);
    accessibilityTest(componentName: 'slider SM Error', themeMode: ThemeMode.dark, child: dsfrRangeSliderError);

    accessibilityTest(componentName: 'slider SM Success', themeMode: ThemeMode.light, child: dsfrRangeSliderSuccess);
    accessibilityTest(componentName: 'slider SM Success', themeMode: ThemeMode.dark, child: dsfrRangeSliderSuccess);

    // FIXME: skip, contraste trop faible
    accessibilityTest(
      componentName: 'slider SM disabled',
      themeMode: ThemeMode.light,
      child: dsfrRangeSliderDisabled,
      skip: true,
    );
    accessibilityTest(
      componentName: 'slider SM disabled',
      themeMode: ThemeMode.dark,
      child: dsfrRangeSliderDisabled,
      skip: true,
    );
  });

  group('Slider double taille MD', () {
    var dsfrRangeSlider = DsfrRangeSlider(
      label: 'label',
      values: RangeValues(0.25, 0.75),
      onChanged: (RangeValues value) {},
      size: DsfrComponentSize.md,
    );
    var dsfrRangeSliderWithDescription = DsfrRangeSlider(
      label: 'label',
      description: 'description',
      values: RangeValues(0.25, 0.75),
      onChanged: (RangeValues value) {},
      size: DsfrComponentSize.md,
    );
    var dsfrRangeSliderError = DsfrRangeSlider(
      label: 'label',
      values: RangeValues(0.25, 0.75),
      componentState: DsfrComponentState.error(errorMessage: 'Erreur'),
      onChanged: (RangeValues value) {},
      size: DsfrComponentSize.md,
    );
    var dsfrRangeSliderSuccess = DsfrRangeSlider(
      label: 'label',
      values: RangeValues(0.25, 0.75),
      componentState: DsfrComponentState.success(message: 'Succès'),
      onChanged: (RangeValues value) {},
      size: DsfrComponentSize.md,
    );
    var dsfrRangeSliderDisabled = DsfrRangeSlider(
      label: 'label',
      values: RangeValues(0.25, 0.75),
      enabled: false,
      size: DsfrComponentSize.md,
    );

    accessibilityTest(componentName: 'slider MD', themeMode: ThemeMode.light, child: dsfrRangeSlider);
    accessibilityTest(componentName: 'slider MD', themeMode: ThemeMode.dark, child: dsfrRangeSlider);

    accessibilityTest(
      componentName: 'slider MD avec une description',
      themeMode: ThemeMode.light,
      child: dsfrRangeSliderWithDescription,
    );
    accessibilityTest(
      componentName: 'slider MD avec une description',
      themeMode: ThemeMode.dark,
      child: dsfrRangeSliderWithDescription,
    );

    accessibilityTest(componentName: 'slider MD Error', themeMode: ThemeMode.light, child: dsfrRangeSliderError);
    accessibilityTest(componentName: 'slider MD Error', themeMode: ThemeMode.dark, child: dsfrRangeSliderError);

    accessibilityTest(componentName: 'slider MD Success', themeMode: ThemeMode.light, child: dsfrRangeSliderSuccess);
    accessibilityTest(componentName: 'slider MD Success', themeMode: ThemeMode.dark, child: dsfrRangeSliderSuccess);

    // FIXME: skip, contraste trop faible
    accessibilityTest(
      componentName: 'slider MD disabled',
      themeMode: ThemeMode.light,
      child: dsfrRangeSliderDisabled,
      skip: true,
    );
    accessibilityTest(
      componentName: 'slider MD disabled',
      themeMode: ThemeMode.dark,
      child: dsfrRangeSliderDisabled,
      skip: true,
    );
  });
}
