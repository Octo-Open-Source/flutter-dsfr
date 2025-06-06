import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({super.key, required this.pageItems, required this.toggleTheme});

  final List<PageItem> pageItems;
  final void Function() toggleTheme;

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  int _currentIndex = 0;

  @override
  Widget build(final context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Système de Design de l'État")),
      body: widget.pageItems.elementAtOrNull(_currentIndex)?.pageBuilder(context),
      floatingActionButton: FloatingActionButton(
        onPressed: widget.toggleTheme,
        child: const Icon(Icons.lightbulb, semanticLabel: "Changer de thème"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      drawer: Drawer(
        child: ListView.builder(
          itemBuilder: (final context, final index) {
            final pageItem = widget.pageItems[index];

            return ListTile(
              title: Text(pageItem.title),
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
                Navigator.pop(context);
              },
            );
          },
          itemCount: widget.pageItems.length,
        ),
      ),
    );
  }
}
