import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/components/dsfr_tile.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget tuileSm = DsfrTile.sm(
      title: 'Tile default',
      description: 'Description',
      detail: 'Details',
  );

  Widget tuileSmWithImage = DsfrTile.sm(
    title: 'Tile with image',
    description: 'Description',
    detail: 'Details',
    imageAsset: 'assets/images/city_hall.svg',
  );

  Widget tuileMd = DsfrTile.sm(
    title: 'Tile default',
    description: 'Description',
    detail: 'Details',
  );

  Widget tuileMdWithImage = DsfrTile.sm(
    title: 'Tile with image',
    description: 'Description',
    detail: 'Details',
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
