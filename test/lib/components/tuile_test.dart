import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/components/tuile.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget tuileSm = DsfrTuile.sm(
      title: 'Tuile defaut',
      description: 'Description',
      detail: 'Détail',
  );

  Widget tuileSmWithImage = DsfrTuile.sm(
    title: 'Tuile with image',
    description: 'Description',
    detail: 'Détail',
    imageAsset: 'assets/images/city_hall.svg',
  );

  Widget tuileMd = DsfrTuile.sm(
    title: 'Tuile defaut',
    description: 'Description',
    detail: 'Détail',
  );

  Widget tuileMdWithImage = DsfrTuile.sm(
    title: 'Tuile with image',
    description: 'Description',
    detail: 'Détail',
    imageAsset: 'assets/images/city_hall.svg',
  );

  //FIXME: skip, zone de tap trop petite hauteur 26 au lieu de 48
  accessibilityTest(componentName: 'Tuile SM', isLightMode: true, child: tuileSm);
  accessibilityTest(componentName: 'Tuile SM', isLightMode: false, child: tuileSm);
  accessibilityTest(componentName: 'Tuile SM with image', isLightMode: true, child: tuileSmWithImage);
  accessibilityTest(componentName: 'Tuile SM with image', isLightMode: false, child: tuileSmWithImage);
  accessibilityTest(componentName: 'Tuile MD', isLightMode: true, child: tuileMd);
  accessibilityTest(componentName: 'Tuile MD', isLightMode: false, child: tuileMd);
  accessibilityTest(componentName: 'Tuile MD with image', isLightMode: true, child: tuileMdWithImage);
  accessibilityTest(componentName: 'Tuile MD with image', isLightMode: false, child: tuileMdWithImage);
}
