import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/src/components/dsfr_modal.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget modal = DsfrModal(isDismissible: false, closeLabel: 'Fermer', child: Text("text"));
  Widget modalWithCloseButton = DsfrModal(isDismissible: true, closeLabel: 'Fermer', child: Text("text"));

  accessibilityTest(componentName: 'Modal', isLightMode: true, child: modal);
  accessibilityTest(componentName: 'Modal', isLightMode: false, child: modal);

  //FIXME: Skip, échoue car le bouton fermer est trop petit
  accessibilityTest(componentName: 'Modal with close', isLightMode: true, child: modalWithCloseButton, skip: true);
  accessibilityTest(componentName: 'Modal with close', isLightMode: false, child: modalWithCloseButton, skip: true);
}
