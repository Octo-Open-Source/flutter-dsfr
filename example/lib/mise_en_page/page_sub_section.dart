import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_text_style.dart';

class PageSubSection extends StatelessWidget {
  const PageSubSection({super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(title, style: DsfrTextStyle.headline5(color: DsfrColorDecisions.textTitleBlueFrance(context))),
        ),
        ...children,
      ],
    );
  }
}
