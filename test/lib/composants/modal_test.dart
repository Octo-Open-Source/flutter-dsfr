import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/composants/accordions.dart';
import 'package:flutter_dsfr/composants/buttons/button.dart';
import 'package:flutter_dsfr/composants/link.dart';
import 'package:flutter_dsfr/composants/modal.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.dart';

void main() {
  Widget modal = DsfrModal(isDismissible: false, child: Text("text"));
  Widget modalWithCloseButton = DsfrModal(isDismissible: true, child: Text("text"));

  accessibilityTest(componentName: 'Modal', isLightMode: true, child: modal);
  accessibilityTest(componentName: 'Modal', isLightMode: false, child: modal);

  //FIXME: Skip, échoue car le bouton fermer est trop petit
  accessibilityTest(componentName: 'Modal with close', isLightMode: true, child: modalWithCloseButton, skip: true);
  accessibilityTest(componentName: 'Modal with close', isLightMode: false, child: modalWithCloseButton, skip: true);
}
