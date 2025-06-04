import 'package:flutter/cupertino.dart';
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

  accessibilityTest(componentName: 'Tile SM', isLightMode: true, child: tileVerticalSm);
  accessibilityTest(componentName: 'Tile SM', isLightMode: false, child: tileVerticalSm);
  accessibilityTest(componentName: 'Tile SM with image', isLightMode: true, child: tileVerticalSmWithImage);
  accessibilityTest(componentName: 'Tile SM with image', isLightMode: false, child: tileVerticalSmWithImage);
  accessibilityTest(componentName: 'Tile SM with tags', isLightMode: true, child: tileVerticalSmWithTags);
  accessibilityTest(componentName: 'Tile SM with tags', isLightMode: false, child: tileVerticalSmWithTags);
  accessibilityTest(componentName: 'Tile MD', isLightMode: true, child: tileVerticalMd);
  accessibilityTest(componentName: 'Tile MD', isLightMode: false, child: tileVerticalMd);
  accessibilityTest(componentName: 'Tile MD with image', isLightMode: true, child: tileVerticalMdWithImage);
  accessibilityTest(componentName: 'Tile MD with image', isLightMode: false, child: tileVerticalMdWithImage);
  accessibilityTest(componentName: 'Tile MD with tags', isLightMode: true, child: tileVerticalMdWithTags);
  accessibilityTest(componentName: 'Tile MD with tags', isLightMode: false, child: tileVerticalMdWithTags);
  accessibilityTest(componentName: 'Tile SM', isLightMode: true, child: tileHorizontalSm);
  accessibilityTest(componentName: 'Tile SM', isLightMode: false, child: tileHorizontalSm);
  accessibilityTest(componentName: 'Tile SM with image', isLightMode: true, child: tileHorizontalSmWithImage);
  accessibilityTest(componentName: 'Tile SM with image', isLightMode: false, child: tileHorizontalSmWithImage);
  accessibilityTest(componentName: 'Tile SM with tags', isLightMode: true, child: tileHorizontalSmWithTags);
  accessibilityTest(componentName: 'Tile SM with tags', isLightMode: false, child: tileHorizontalSmWithTags);
  accessibilityTest(componentName: 'Tile MD', isLightMode: true, child: tileHorizontalMd);
  accessibilityTest(componentName: 'Tile MD', isLightMode: false, child: tileHorizontalMd);
  accessibilityTest(componentName: 'Tile MD with image', isLightMode: true, child: tileHorizontalMdWithImage);
  accessibilityTest(componentName: 'Tile MD with image', isLightMode: false, child: tileHorizontalMdWithImage);
  accessibilityTest(componentName: 'Tile MD with tags', isLightMode: true, child: tileHorizontalMdWithTags);
  accessibilityTest(componentName: 'Tile MD with tags', isLightMode: false, child: tileHorizontalMdWithTags);
}
