import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

enum DsfrDownloadFilesType {
  link,
  card,
  tile,
}

class DsfrDownloadFiles extends StatelessWidget {
  final DsfrDownloadFilesType type;
  final String label;
  final String details;
  final VoidCallback? onTap;

  const DsfrDownloadFiles({super.key, required this.type, required this.label, required this.details, this.onTap});

  @override
  Widget build(BuildContext context) {
    return switch(type) {
      DsfrDownloadFilesType.link => DsfrDownloadFilesLink(label: label, details: details, onTap: onTap),
      DsfrDownloadFilesType.card => throw('Card type is not implemented yet.'),
      DsfrDownloadFilesType.tile => throw('Tile type is not implemented yet.'),
    };
  }
}

class DsfrDownloadFilesLink extends StatelessWidget {
  final String label;
  final String details;
  final VoidCallback? onTap;

  const DsfrDownloadFilesLink({super.key, required this.label, required this.details, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DsfrLink(
          label: label,
          iconPosition: DsfrLinkIconPosition.end,
          icon: DsfrIcons.systemDownloadFill,
          onTap: onTap,
        ),
        Text(details, style: DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textMentionGrey(context)),),
      ],
    );
  }
}