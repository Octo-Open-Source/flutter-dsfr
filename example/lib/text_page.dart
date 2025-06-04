import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  const TextPage({super.key});

  static final model = PageItem(title: 'Typographie', pageBuilder: (final context) => const TextPage());

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  String _text = 'Lorem ipsum dolor sit amet';
  double _fontSize = 16;

  @override
  Widget build(final context) {
    final dsfrTextStyle = DsfrTextStyle(fontSize: _fontSize);
    final data = '$_text\n$_text';

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        DsfrInput(
          label: 'Text',
          initialValue: _text,
          onChanged: (final value) {
            setState(() {
              _text = value;
            });
          },
        ),
        const SizedBox(height: 16),
        DsfrInput(
          label: 'Font Size',
          initialValue: _fontSize.toString(),
          onChanged: (final value) {
            setState(() {
              final parsedValue = double.tryParse(value);
              if (parsedValue != null) {
                _fontSize = parsedValue;
              }
            });
          },
        ),
        const SizedBox(height: 16),
        const Text('Normal'),
        Text(data, style: dsfrTextStyle),
        const SizedBox(height: 16),
        Text(
          data,
          style: dsfrTextStyle.copyWith(color: Colors.white, backgroundColor: Colors.black),
        ),
        const SizedBox(height: 16),
        const Text('Medium'),
        Text(data, style: dsfrTextStyle.copyWith(fontWeight: FontWeight.w500)),
        const SizedBox(height: 16),
        Text(
          data,
          style: dsfrTextStyle.copyWith(
            color: Colors.white,
            backgroundColor: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        const Text('Bold'),
        Text(data, style: dsfrTextStyle.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        Text(
          data,
          style: dsfrTextStyle.copyWith(
            color: Colors.white,
            backgroundColor: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
