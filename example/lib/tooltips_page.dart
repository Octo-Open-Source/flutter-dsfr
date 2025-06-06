import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class TooltipsPage extends StatelessWidget {
  const TooltipsPage({super.key});

  static final model = PageItem(title: 'Infobulles', pageBuilder: (final context) => const TooltipsPage());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DsfrTooltip(message: 'Infobulle', forceBottom: true, child: Icon(Icons.info_outline)),
              DsfrTooltip(
                message: 'Ceci est un message informatif d\'une importance toute relative',
                tootipHorizontalPadding: 8,
                messageTextAlign: TextAlign.center,
                forceBottom: true,
                child: Icon(Icons.info_outline),
              ),
              DsfrTooltip(message: 'Infobulle', forceBottom: true, child: Icon(Icons.info_outline)),
            ],
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DsfrTooltip(message: 'Infobulle', child: Icon(Icons.info_outline)),
              DsfrTooltip(message: 'Infobulle', child: Icon(Icons.info_outline)),
              DsfrTooltip(message: 'Infobulle', child: Icon(Icons.info_outline)),
            ],
          ),
        ],
      ),
    );
  }
}
