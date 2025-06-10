import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget tileVerticalSm = DsfrTile(
    size: DsfrComponentSize.sm,
    title: 'Tile default',
    description: 'Description',
    details: 'Details',
  );

  Widget tileVerticalSmWithImage = DsfrTile(
    size: DsfrComponentSize.sm,
    title: 'Tile with image',
    description: 'Description',
    details: 'Details',
    imageAsset: 'assets/images/city_hall.svg',
  );

  Widget tileVerticalSmWithTags = DsfrTile(
    size: DsfrComponentSize.sm,
    title: 'Tile with image',
    description: 'Description',
    details: 'Details',
    imageAsset: 'assets/images/city_hall.svg',
    badgesAndTags: [
      DsfrTag(label: 'Tag', size: DsfrComponentSize.sm),
      DsfrTag(label: 'Tag', size: DsfrComponentSize.sm),
      DsfrTag(label: 'Tag', size: DsfrComponentSize.sm),
    ],
  );

  Widget tileVerticalMd = DsfrTile(
    size: DsfrComponentSize.md,
    title: 'Tile default',
    description: 'Description',
    details: 'Details',
  );

  Widget tileVerticalMdWithImage = DsfrTile(
    size: DsfrComponentSize.md,
    title: 'Tile with image',
    description: 'Description',
    details: 'Details',
    imageAsset: 'assets/images/city_hall.svg',
  );

  Widget tileVerticalMdWithTags = DsfrTile(
    size: DsfrComponentSize.md,
    title: 'Tile with image',
    description: 'Description',
    details: 'Details',
    imageAsset: 'assets/images/city_hall.svg',
    badgesAndTags: [
      DsfrTag(label: 'Tag', size: DsfrComponentSize.md),
      DsfrTag(label: 'Tag', size: DsfrComponentSize.md),
      DsfrTag(label: 'Tag', size: DsfrComponentSize.md),
    ],
  );

  Widget tileHorizontalSm = DsfrTile(
    direction: Axis.horizontal,
    size: DsfrComponentSize.sm,
    title: 'Tile default',
    description: 'Description',
    details: 'Details',
  );

  Widget tileHorizontalSmWithImage = DsfrTile(
    direction: Axis.horizontal,
    size: DsfrComponentSize.sm,
    title: 'Tile with image',
    description: 'Description',
    details: 'Details',
    imageAsset: 'assets/images/city_hall.svg',
  );

  Widget tileHorizontalSmWithTags = DsfrTile(
    size: DsfrComponentSize.sm,
    title: 'Tile with image',
    description: 'Description',
    details: 'Details',
    imageAsset: 'assets/images/city_hall.svg',
    badgesAndTags: [
      DsfrTag(label: 'Tag', size: DsfrComponentSize.sm),
      DsfrTag(label: 'Tag', size: DsfrComponentSize.sm),
      DsfrTag(label: 'Tag', size: DsfrComponentSize.sm),
    ],
  );

  Widget tileHorizontalMd = DsfrTile(
    size: DsfrComponentSize.md,
    title: 'Tile default',
    description: 'Description',
    details: 'Details',
  );

  Widget tileHorizontalMdWithImage = DsfrTile(
    direction: Axis.horizontal,
    size: DsfrComponentSize.md,
    title: 'Tile with image',
    description: 'Description',
    details: 'Details',
    imageAsset: 'assets/images/city_hall.svg',
  );

  Widget tileHorizontalMdWithTags = DsfrTile(
    direction: Axis.horizontal,
    size: DsfrComponentSize.md,
    title: 'Tile with image',
    description: 'Description',
    details: 'Details',
    imageAsset: 'assets/images/city_hall.svg',
    badgesAndTags: [
      DsfrTag(label: 'Tag', size: DsfrComponentSize.md),
      DsfrTag(label: 'Tag', size: DsfrComponentSize.md),
      DsfrTag(label: 'Tag', size: DsfrComponentSize.md),
    ],
  );

  accessibilityTest(componentName: 'Tile SM', themeMode: ThemeMode.light, child: tileVerticalSm);
  accessibilityTest(componentName: 'Tile SM', themeMode: ThemeMode.dark, child: tileVerticalSm);
  accessibilityTest(componentName: 'Tile SM with image', themeMode: ThemeMode.light, child: tileVerticalSmWithImage);
  accessibilityTest(componentName: 'Tile SM with image', themeMode: ThemeMode.dark, child: tileVerticalSmWithImage);
  accessibilityTest(componentName: 'Tile SM with tags', themeMode: ThemeMode.light, child: tileVerticalSmWithTags);
  accessibilityTest(componentName: 'Tile SM with tags', themeMode: ThemeMode.dark, child: tileVerticalSmWithTags);
  accessibilityTest(componentName: 'Tile MD', themeMode: ThemeMode.light, child: tileVerticalMd);
  accessibilityTest(componentName: 'Tile MD', themeMode: ThemeMode.dark, child: tileVerticalMd);
  accessibilityTest(componentName: 'Tile MD with image', themeMode: ThemeMode.light, child: tileVerticalMdWithImage);
  accessibilityTest(componentName: 'Tile MD with image', themeMode: ThemeMode.dark, child: tileVerticalMdWithImage);
  accessibilityTest(componentName: 'Tile MD with tags', themeMode: ThemeMode.light, child: tileVerticalMdWithTags);
  accessibilityTest(componentName: 'Tile MD with tags', themeMode: ThemeMode.dark, child: tileVerticalMdWithTags);
  accessibilityTest(componentName: 'Tile SM', themeMode: ThemeMode.light, child: tileHorizontalSm);
  accessibilityTest(componentName: 'Tile SM', themeMode: ThemeMode.dark, child: tileHorizontalSm);
  accessibilityTest(componentName: 'Tile SM with image', themeMode: ThemeMode.light, child: tileHorizontalSmWithImage);
  accessibilityTest(componentName: 'Tile SM with image', themeMode: ThemeMode.dark, child: tileHorizontalSmWithImage);
  accessibilityTest(componentName: 'Tile SM with tags', themeMode: ThemeMode.light, child: tileHorizontalSmWithTags);
  accessibilityTest(componentName: 'Tile SM with tags', themeMode: ThemeMode.dark, child: tileHorizontalSmWithTags);
  accessibilityTest(componentName: 'Tile MD', themeMode: ThemeMode.light, child: tileHorizontalMd);
  accessibilityTest(componentName: 'Tile MD', themeMode: ThemeMode.dark, child: tileHorizontalMd);
  accessibilityTest(componentName: 'Tile MD with image', themeMode: ThemeMode.light, child: tileHorizontalMdWithImage);
  accessibilityTest(componentName: 'Tile MD with image', themeMode: ThemeMode.dark, child: tileHorizontalMdWithImage);
  accessibilityTest(componentName: 'Tile MD with tags', themeMode: ThemeMode.light, child: tileHorizontalMdWithTags);
  accessibilityTest(componentName: 'Tile MD with tags', themeMode: ThemeMode.dark, child: tileHorizontalMdWithTags);
}
