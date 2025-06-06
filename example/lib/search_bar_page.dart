// ignore_for_file: avoid_print

import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class SearchBarPage extends StatelessWidget {
  const SearchBarPage({super.key});

  static final model = PageItem(title: 'Barre de recherche', pageBuilder: (final context) => const SearchBarPage());

  @override
  Widget build(final context) {
    final searchController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 32,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DsfrSearchBar(
            onSearch: () {
              print('je recherche : ${searchController.text}');
            },
            controller: searchController,
          ),
          FractionallySizedBox(
            widthFactor: 0.5,
            child: DsfrSearchBar(
              onSearch: () {
                print('je recherche : ${searchController.text}');
              },
              controller: searchController,
            ),
          ),
        ],
      ),
    );
  }
}
