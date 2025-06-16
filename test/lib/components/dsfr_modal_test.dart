import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_modal.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget modal = DsfrModal(isDismissible: false, closeLabel: 'Fermer', child: Text("text"));
  Widget modalWithCloseButton = DsfrModal(isDismissible: true, closeLabel: 'Fermer', child: Text("text"));

  accessibilityTest(componentName: 'Modal', themeMode: ThemeMode.light, child: modal);
  accessibilityTest(componentName: 'Modal', themeMode: ThemeMode.dark, child: modal);

  //FIXME: Skip, échoue car le bouton fermer est trop petit
  accessibilityTest(
    componentName: 'Modal with close',
    themeMode: ThemeMode.light,
    child: modalWithCloseButton,
    skip: true,
  );
  accessibilityTest(
    componentName: 'Modal with close',
    themeMode: ThemeMode.dark,
    child: modalWithCloseButton,
    skip: true,
  );
}
