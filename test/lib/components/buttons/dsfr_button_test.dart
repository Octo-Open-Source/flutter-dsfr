import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/buttons/dsfr_button.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_icons.g.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  group('Primary', () {
    Widget buttonPrimarySm = DsfrButton(label: 'label', size: DsfrComponentSize.sm, variant: DsfrButtonVariant.primary);
    Widget buttonPrimaryMd = DsfrButton(label: 'label', size: DsfrComponentSize.md, variant: DsfrButtonVariant.primary);
    Widget buttonPrimaryLg = DsfrButton(label: 'label', size: DsfrComponentSize.lg, variant: DsfrButtonVariant.primary);
    Widget buttonPrimaryWithIcon = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.primary,
      icon: DsfrIcons.systemArrowLeftLine,
    );
    Widget buttonPrimarIconOnly = DsfrButton(
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.primary,
      icon: DsfrIcons.systemArrowLeftLine,
    );
    Widget buttonPrimaryDisabled = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.primary,
      onPressed: null,
    );

    accessibilityTest(componentName: 'Button Primary SM', themeMode: ThemeMode.light, child: buttonPrimarySm);
    accessibilityTest(componentName: 'Button Primary SM', themeMode: ThemeMode.dark, child: buttonPrimarySm);

    accessibilityTest(componentName: 'Button Primary MD', themeMode: ThemeMode.light, child: buttonPrimaryMd);
    accessibilityTest(componentName: 'Button Primary MD', themeMode: ThemeMode.dark, child: buttonPrimaryMd);

    accessibilityTest(componentName: 'Button Primary LG', themeMode: ThemeMode.light, child: buttonPrimaryLg);
    accessibilityTest(componentName: 'Button Primary LG', themeMode: ThemeMode.dark, child: buttonPrimaryLg);

    accessibilityTest(
      componentName: 'Button Primary with icon',
      themeMode: ThemeMode.light,
      child: buttonPrimaryWithIcon,
    );
    accessibilityTest(
      componentName: 'Button Primary with icon',
      themeMode: ThemeMode.dark,
      child: buttonPrimaryWithIcon,
    );

    accessibilityTest(
      componentName: 'Button Primary icon only',
      themeMode: ThemeMode.light,
      child: buttonPrimarIconOnly,
    );
    accessibilityTest(
      componentName: 'Button Primary icon only',
      themeMode: ThemeMode.dark,
      child: buttonPrimarIconOnly,
    );

    accessibilityTest(
      componentName: 'Button Primary Disabled',
      themeMode: ThemeMode.light,
      child: buttonPrimaryDisabled,
    );
    accessibilityTest(
      componentName: 'Button Primary Disabled',
      themeMode: ThemeMode.dark,
      child: buttonPrimaryDisabled,
    );
  });

  group('Secondary', () {
    Widget buttonSecondarySm = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.sm,
      variant: DsfrButtonVariant.secondary,
    );
    Widget buttonSecondaryMd = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.secondary,
    );
    Widget buttonSecondaryLg = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.lg,
      variant: DsfrButtonVariant.secondary,
    );
    Widget buttonSecondaryWithIcon = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.secondary,
      icon: DsfrIcons.systemArrowLeftLine,
    );
    Widget buttonSecondaryIconOnly = DsfrButton(
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.secondary,
      icon: DsfrIcons.systemArrowLeftLine,
    );
    Widget buttonSecondaryDisabled = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.secondary,
      onPressed: null,
    );

    accessibilityTest(componentName: 'Button Secondary SM', themeMode: ThemeMode.light, child: buttonSecondarySm);
    accessibilityTest(componentName: 'Button Secondary SM', themeMode: ThemeMode.dark, child: buttonSecondarySm);

    accessibilityTest(componentName: 'Button Secondary MD', themeMode: ThemeMode.light, child: buttonSecondaryMd);
    accessibilityTest(componentName: 'Button Secondary MD', themeMode: ThemeMode.dark, child: buttonSecondaryMd);

    accessibilityTest(componentName: 'Button Secondary LG', themeMode: ThemeMode.light, child: buttonSecondaryLg);
    accessibilityTest(componentName: 'Button Secondary LG', themeMode: ThemeMode.dark, child: buttonSecondaryLg);

    accessibilityTest(
      componentName: 'Button Secondary with icon',
      themeMode: ThemeMode.light,
      child: buttonSecondaryWithIcon,
    );
    accessibilityTest(
      componentName: 'Button Secondary with icon',
      themeMode: ThemeMode.dark,
      child: buttonSecondaryWithIcon,
    );

    accessibilityTest(
      componentName: 'Button Secondary icon only',
      themeMode: ThemeMode.light,
      child: buttonSecondaryIconOnly,
    );
    accessibilityTest(
      componentName: 'Button Secondary icon only',
      themeMode: ThemeMode.dark,
      child: buttonSecondaryIconOnly,
    );

    accessibilityTest(
      componentName: 'Button Secondary Disabled',
      themeMode: ThemeMode.light,
      child: buttonSecondaryDisabled,
    );
    accessibilityTest(
      componentName: 'Button Secondary Disabled',
      themeMode: ThemeMode.dark,
      child: buttonSecondaryDisabled,
    );
  });

  group('Tertiary', () {
    Widget buttonTertiarySm = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.sm,
      variant: DsfrButtonVariant.tertiary,
    );
    Widget buttonTertiaryMd = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.tertiary,
    );
    Widget buttonTertiaryLg = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.lg,
      variant: DsfrButtonVariant.tertiary,
    );
    Widget buttonTertiaryWithIcon = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.tertiary,
      icon: DsfrIcons.systemArrowLeftLine,
    );
    Widget buttonTertiaryIconOnly = DsfrButton(
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.tertiary,
      icon: DsfrIcons.systemArrowLeftLine,
    );
    Widget buttonTertiaryDisabled = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.tertiary,
      onPressed: null,
    );

    accessibilityTest(componentName: 'Button Tertiary SM', themeMode: ThemeMode.light, child: buttonTertiarySm);
    accessibilityTest(componentName: 'Button Tertiary SM', themeMode: ThemeMode.dark, child: buttonTertiarySm);

    accessibilityTest(componentName: 'Button Tertiary MD', themeMode: ThemeMode.light, child: buttonTertiaryMd);
    accessibilityTest(componentName: 'Button Tertiary MD', themeMode: ThemeMode.dark, child: buttonTertiaryMd);

    accessibilityTest(componentName: 'Button Tertiary LG', themeMode: ThemeMode.light, child: buttonTertiaryLg);
    accessibilityTest(componentName: 'Button Tertiary LG', themeMode: ThemeMode.dark, child: buttonTertiaryLg);

    accessibilityTest(
      componentName: 'Button Tertiary with icon',
      themeMode: ThemeMode.light,
      child: buttonTertiaryWithIcon,
    );
    accessibilityTest(
      componentName: 'Button Tertiary with icon',
      themeMode: ThemeMode.dark,
      child: buttonTertiaryWithIcon,
    );

    accessibilityTest(
      componentName: 'Button Tertiary icon only',
      themeMode: ThemeMode.light,
      child: buttonTertiaryIconOnly,
    );
    accessibilityTest(
      componentName: 'Button Tertiary icon only',
      themeMode: ThemeMode.dark,
      child: buttonTertiaryIconOnly,
    );

    accessibilityTest(
      componentName: 'Button Tertiary Disabled',
      themeMode: ThemeMode.light,
      child: buttonTertiaryDisabled,
    );
    accessibilityTest(
      componentName: 'Button Tertiary Disabled',
      themeMode: ThemeMode.dark,
      child: buttonTertiaryDisabled,
    );
  });
}
