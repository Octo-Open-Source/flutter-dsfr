import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class SandboxPage extends StatelessWidget {
  const SandboxPage({super.key});

  static final model = PageItem(title: 'Bac à sable', pageBuilder: (final context) => const SandboxPage());

  @override
  Widget build(final context) => const SizedBox();
}
