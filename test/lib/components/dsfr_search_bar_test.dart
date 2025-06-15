import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_search_bar.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  final DsfrSearchBar searchBar = DsfrSearchBar(onSearch: () {}, controller: TextEditingController());

  accessibilityTest(componentName: 'barre de recherche', themeMode: ThemeMode.light, child: searchBar);
  accessibilityTest(componentName: 'barre de recherche', themeMode: ThemeMode.dark, child: searchBar);
}
