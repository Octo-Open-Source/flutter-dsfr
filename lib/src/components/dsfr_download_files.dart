import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

enum DsfrDownloadFilesType { link, card, tile }

class DsfrDownloadFiles extends StatelessWidget {

  const DsfrDownloadFiles._({
    super.key,
    required this.type,
    this.size,
    required this.label,
    this.description,
    required this.details,
    this.imageAsset,
    this.badgesAndTags,
    this.onTap,
  });

  final DsfrDownloadFilesType type;
  final DsfrComponentSize? size;
  final String label;
  final String? description;
  final String details;
  final String? imageAsset;
  final List<Widget>? badgesAndTags;
  final VoidCallback? onTap;

  const DsfrDownloadFiles.link({
    final Key? key,
    required final label,
    required final details,
    final onTap
  }) : this._(
    key: key,
    type: DsfrDownloadFilesType.link,
    size: null,
    label: label,
    description: null,
    details: details,
    imageAsset: null,
    badgesAndTags: null,
    onTap: onTap,
  );

  const DsfrDownloadFiles.tile({
    final Key? key,
    required final size,
    required final label,
    final description,
    required final details,
    final badgesAndTags,
    final imageAsset,
    final onTap
  }) : this._(
    key: key,
    type: DsfrDownloadFilesType.tile,
    size: size,
    label: label,
    description: description,
    details: details,
    imageAsset: imageAsset,
    badgesAndTags: badgesAndTags,
    onTap: onTap,
  );

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      DsfrDownloadFilesType.link => DsfrDownloadFilesLink(label: label, details: details, onTap: onTap),
      DsfrDownloadFilesType.card => throw ('Card type is not implemented yet.'),
      DsfrDownloadFilesType.tile => (size == null) ? throw ('Size is mandatory for tile type.') : DsfrTile(
          size: size!,
          direction: Axis.horizontal,
          title: label,
          description: description,
          details: details,
          imageAsset: imageAsset,
          enabled: onTap != null,
          badgesAndTags: badgesAndTags,
          onTap: onTap,
          showActionIcon: true,
          actionIcon: DsfrIcons.systemDownloadLine,
      ),
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
          icon: DsfrIcons.systemDownloadLine,
          onTap: onTap,
        ),
        Text(details, style: DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textMentionGrey(context))),
      ],
    );
  }
}
