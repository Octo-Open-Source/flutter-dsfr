import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_text_style.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_icons.g.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';

class DsfrCard extends StatelessWidget {
  final DsfrComponentSize size;
  final String title;
  final String? description;

  const DsfrCard({
    super.key,
    required this.size,
    required this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: DsfrColorDecisions.backgroundDefaultGrey(context),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: DsfrColorDecisions.borderDefaultGrey(context),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Title(text: title, size: size),
            if (description != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: _Description(text: description!, size: size),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: _CardIcon(size: size),
            ),
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String text;
  final DsfrComponentSize size;

  const _Title({
    required this.text,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final color = DsfrColorDecisions.textTitleBlueFrance(context);
    final style = switch (size) {
      DsfrComponentSize.sm => DsfrTextStyle.headline6(color: color),
      DsfrComponentSize.md => DsfrTextStyle.headline5(color: color),
      DsfrComponentSize.lg => DsfrTextStyle.headline4(color: color),
    };
    return Text(text, style: style);
  }
}

class _Description extends StatelessWidget {
  final String text;
  final DsfrComponentSize size;

  const _Description({
    required this.text,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final color = DsfrColorDecisions.textDefaultGrey(context);
    final style = switch (size) {
      DsfrComponentSize.sm => DsfrTextStyle.bodySm(color: color),
      DsfrComponentSize.md => DsfrTextStyle.bodyMd(color: color),
      DsfrComponentSize.lg => DsfrTextStyle.bodyLg(color: color),
    };
    return Text(
      text,
      style: style,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _CardIcon extends StatelessWidget {
  final DsfrComponentSize size;

  const _CardIcon({
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final iconSize = switch (size) {
      DsfrComponentSize.sm => 16.0,
      DsfrComponentSize.md => 24.0,
      DsfrComponentSize.lg => 32.0,
    };

    return Align(
      alignment: Alignment.centerRight,
      child: Icon(
        DsfrIcons.systemArrowRightLine,
        size: iconSize,
        color: DsfrColorDecisions.textActionHighBlueFrance(context),
      ),
    );
  }
}
