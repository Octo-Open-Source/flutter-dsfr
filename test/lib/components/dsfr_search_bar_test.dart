import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_search_bar.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  final DsfrSearchBar searchBar = DsfrSearchBar(onSearch: () {}, controller: TextEditingController());

  accessibilityTest(componentName: 'barre de recherche', isLightMode: true, child: searchBar);
  accessibilityTest(componentName: 'barre de recherche', isLightMode: false, child: searchBar);
}
