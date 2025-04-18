import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_tile.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget tuileSm = DsfrTile(
      size: DsfrComponentSize.sm,
      title: 'Tile default',
      description: 'Description',
      details: 'Details',
  );

  Widget tuileSmWithImage = DsfrTile(
    size: DsfrComponentSize.sm,
    title: 'Tile with image',
    description: 'Description',
    details: 'Details',
    imageAsset: 'assets/images/city_hall.svg',
  );

  Widget tuileMd = DsfrTile(
    size: DsfrComponentSize.md,
    title: 'Tile default',
    description: 'Description',
    details: 'Details',
  );

  Widget tuileMdWithImage = DsfrTile(
    size: DsfrComponentSize.md,
    title: 'Tile with image',
    description: 'Description',
    details: 'Details',
    imageAsset: 'assets/images/city_hall.svg',
  );

  accessibilityTest(componentName: 'Tile SM', isLightMode: true, child: tuileSm);
  accessibilityTest(componentName: 'Tile SM', isLightMode: false, child: tuileSm);
  accessibilityTest(componentName: 'Tile SM with image', isLightMode: true, child: tuileSmWithImage);
  accessibilityTest(componentName: 'Tile SM with image', isLightMode: false, child: tuileSmWithImage);
  accessibilityTest(componentName: 'Tile MD', isLightMode: true, child: tuileMd);
  accessibilityTest(componentName: 'Tile MD', isLightMode: false, child: tuileMd);
  accessibilityTest(componentName: 'Tile MD with image', isLightMode: true, child: tuileMdWithImage);
  accessibilityTest(componentName: 'Tile MD with image', isLightMode: false, child: tuileMdWithImage);
}
