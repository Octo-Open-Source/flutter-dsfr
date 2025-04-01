import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/components/buttons/button.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/a11y_test.skip.dart';

void main() {
  group('Primary', () {
    Widget buttonPrimarySm = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.sm,
      variant: DsfrButtonVariant.primary,
    );
    Widget buttonPrimaryMd = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.md,
      variant: DsfrButtonVariant.primary,
    );
    Widget buttonPrimaryLg = DsfrButton(
      label: 'label',
      size: DsfrComponentSize.lg,
      variant: DsfrButtonVariant.primary,
    );
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

    accessibilityTest(componentName: 'Button Primary SM', isLightMode: true, child: buttonPrimarySm);
    accessibilityTest(componentName: 'Button Primary SM', isLightMode: false, child: buttonPrimarySm);

    accessibilityTest(componentName: 'Button Primary MD', isLightMode: true, child: buttonPrimaryMd);
    accessibilityTest(componentName: 'Button Primary MD', isLightMode: false, child: buttonPrimaryMd);

    accessibilityTest(componentName: 'Button Primary LG', isLightMode: true, child: buttonPrimaryLg);
    accessibilityTest(componentName: 'Button Primary LG', isLightMode: false, child: buttonPrimaryLg);

    accessibilityTest(componentName: 'Button Primary with icon', isLightMode: true, child: buttonPrimaryWithIcon);
    accessibilityTest(componentName: 'Button Primary with icon', isLightMode: false, child: buttonPrimaryWithIcon);

    accessibilityTest(componentName: 'Button Primary icon only', isLightMode: true, child: buttonPrimarIconOnly);
    accessibilityTest(componentName: 'Button Primary icon only', isLightMode: false, child: buttonPrimarIconOnly);

    accessibilityTest(componentName: 'Button Primary Disabled', isLightMode: true, child: buttonPrimaryDisabled);
    accessibilityTest(componentName: 'Button Primary Disabled', isLightMode: false, child: buttonPrimaryDisabled);
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

    accessibilityTest(componentName: 'Button Secondary SM', isLightMode: true, child: buttonSecondarySm);
    accessibilityTest(componentName: 'Button Secondary SM', isLightMode: false, child: buttonSecondarySm);

    accessibilityTest(componentName: 'Button Secondary MD', isLightMode: true, child: buttonSecondaryMd);
    accessibilityTest(componentName: 'Button Secondary MD', isLightMode: false, child: buttonSecondaryMd);

    accessibilityTest(componentName: 'Button Secondary LG', isLightMode: true, child: buttonSecondaryLg);
    accessibilityTest(componentName: 'Button Secondary LG', isLightMode: false, child: buttonSecondaryLg);

    accessibilityTest(componentName: 'Button Secondary with icon', isLightMode: true, child: buttonSecondaryWithIcon);
    accessibilityTest(componentName: 'Button Secondary with icon', isLightMode: false, child: buttonSecondaryWithIcon);

    accessibilityTest(componentName: 'Button Secondary icon only', isLightMode: true, child: buttonSecondaryIconOnly);
    accessibilityTest(componentName: 'Button Secondary icon only', isLightMode: false, child: buttonSecondaryIconOnly);

    accessibilityTest(componentName: 'Button Secondary Disabled', isLightMode: true, child: buttonSecondaryDisabled);
    accessibilityTest(componentName: 'Button Secondary Disabled', isLightMode: false, child: buttonSecondaryDisabled);
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

    accessibilityTest(componentName: 'Button Tertiary SM', isLightMode: true, child: buttonTertiarySm);
    accessibilityTest(componentName: 'Button Tertiary SM', isLightMode: false, child: buttonTertiarySm);

    accessibilityTest(componentName: 'Button Tertiary MD', isLightMode: true, child: buttonTertiaryMd);
    accessibilityTest(componentName: 'Button Tertiary MD', isLightMode: false, child: buttonTertiaryMd);

    accessibilityTest(componentName: 'Button Tertiary LG', isLightMode: true, child: buttonTertiaryLg);
    accessibilityTest(componentName: 'Button Tertiary LG', isLightMode: false, child: buttonTertiaryLg);

    accessibilityTest(componentName: 'Button Tertiary with icon', isLightMode: true, child: buttonTertiaryWithIcon);
    accessibilityTest(componentName: 'Button Tertiary with icon', isLightMode: false, child: buttonTertiaryWithIcon);

    accessibilityTest(componentName: 'Button Tertiary icon only', isLightMode: true, child: buttonTertiaryIconOnly);
    accessibilityTest(componentName: 'Button Tertiary icon only', isLightMode: false, child: buttonTertiaryIconOnly);

    accessibilityTest(componentName: 'Button Tertiary Disabled', isLightMode: true, child: buttonTertiaryDisabled);
    accessibilityTest(componentName: 'Button Tertiary Disabled', isLightMode: false, child: buttonTertiaryDisabled);
  });

}
