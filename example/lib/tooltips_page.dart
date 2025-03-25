import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/composants/tooltip.dart';

class TooltipsPage extends StatelessWidget {
  const TooltipsPage({super.key});

  static final model = PageItem(
    title: 'Infobulles',
    pageBuilder: (final context) => const TooltipsPage(),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20), // gestion du padding ?
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DsfrTooltip(
                message: 'Infobulle',
                child: Icon(Icons.info_outline),
              ),
              DsfrTooltip(
                message: 'Infobulle',
                child: Icon(Icons.info_outline),
              ),
              DsfrTooltip(
                message: 'Infobulle',
                child: Icon(Icons.info_outline),
              ),
            ],
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DsfrTooltip(
                message: 'Infobulle',
                child: Icon(Icons.info_outline),
              ),
              DsfrTooltip(
                message: 'Infobulle',
                child: Icon(Icons.info_outline),
              ),
              DsfrTooltip(
                message: 'Infobulle',
                child: Icon(Icons.info_outline),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
