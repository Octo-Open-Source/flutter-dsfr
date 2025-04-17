import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_text_style.dart';

class PageSection extends StatelessWidget {
  const PageSection({super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: DsfrTextStyle.headline3(color: DsfrColorDecisions.textTitleBlueFrance(context))),
        ...children,
      ],
    );
  }
}
