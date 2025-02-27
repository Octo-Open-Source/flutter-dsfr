import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class TogglesPage extends StatefulWidget {
  const TogglesPage({super.key});

  static final model = PageItem(
    title: 'Interrupteur',
    pageBuilder: (final context) => const TogglesPage(),
  );

  @override
  State<TogglesPage> createState() => _TogglesPageState();
}

class _TogglesPageState extends State<TogglesPage> {
  bool _toggleLeft = false;
  bool _toggleRight = false;

  @override
  Widget build(final context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Etats',
              style: DsfrTextStyle.headline3(
                  color: DsfrColorDecisions.textTitleBlueFrance(context))),
          Text('Label à gauche',
              style: DsfrTextStyle.headline5(
                  color: DsfrColorDecisions.textTitleBlueFrance(context))),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            labelLocation: DsfrToggleLabelLocation.left,
            value: _toggleLeft,
            onChanged: (final value) {
              setState(() {
                _toggleLeft = value;
              });
            },
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            labelLocation: DsfrToggleLabelLocation.left,
            value: !_toggleRight,
            onChanged: (final value) {
              setState(() {
                _toggleRight = !value;
              });
            },
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            labelLocation: DsfrToggleLabelLocation.left,
            enabled: false,
            value: false,
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            labelLocation: DsfrToggleLabelLocation.left,
            enabled: false,
            value: true,
          ),
          Text('Label à droite',
              style: DsfrTextStyle.headline5(
                  color: DsfrColorDecisions.textTitleBlueFrance(context))),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            value: _toggleLeft,
            onChanged: (final value) {
              setState(() {
                _toggleLeft = value;
              });
            },
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            value: !_toggleRight,
            onChanged: (final value) {
              setState(() {
                _toggleRight = !value;
              });
            },
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            enabled: false,
            value: false,
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            enabled: false,
            value: true,
          ),
          Text('Avec description',
              style: DsfrTextStyle.headline4(
                  color: DsfrColorDecisions.textTitleBlueFrance(context))),
          Text('Label à gauche',
              style: DsfrTextStyle.headline5(
                  color: DsfrColorDecisions.textTitleBlueFrance(context))),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            description: 'Description de l\'interrupteur',
            labelLocation: DsfrToggleLabelLocation.left,
            value: _toggleLeft,
            onChanged: (final value) {
              setState(() {
                _toggleLeft = value;
              });
            },
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            description: 'Description de l\'interrupteur',
            labelLocation: DsfrToggleLabelLocation.left,
            value: !_toggleRight,
            onChanged: (final value) {
              setState(() {
                _toggleRight = !value;
              });
            },
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            description: 'Description de l\'interrupteur',
            labelLocation: DsfrToggleLabelLocation.left,
            enabled: false,
            value: false,
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            description: 'Description de l\'interrupteur',
            labelLocation: DsfrToggleLabelLocation.left,
            enabled: false,
            value: true,
          ),
          Text('Label à droite',
              style: DsfrTextStyle.headline5(
                  color: DsfrColorDecisions.textTitleBlueFrance(context))),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            description: 'Description de l\'interrupteur',
            value: _toggleLeft,
            onChanged: (final value) {
              setState(() {
                _toggleLeft = value;
              });
            },
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            description: 'Description de l\'interrupteur',
            value: !_toggleRight,
            onChanged: (final value) {
              setState(() {
                _toggleRight = !value;
              });
            },
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            description: 'Description de l\'interrupteur',
            enabled: false,
            value: false,
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            description: 'Description de l\'interrupteur',
            enabled: false,
            value: true,
          ),
          DsfrToggleSwitch(
            label: 'Libellé de l\'interrupteur',
            description: 'Description de l\'interrupteur',
            enabled: false,
            value: true,
          ),
        ],
      ),
    );
  }
}
