import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget downloadFileLink = DsfrDownloadFiles(
    type: DsfrDownloadFilesType.link,
    label: 'Intitulé du fichier à télécharger',
    details: 'PDF - 61,55 Ko',
    onTap: () {},
  );

  accessibilityTest(componentName: 'Download - Link', isLightMode: true, child: downloadFileLink);
  accessibilityTest(componentName: 'Download - Link', isLightMode: true, child: downloadFileLink);
}
