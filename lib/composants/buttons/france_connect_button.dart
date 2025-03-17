import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FranceConnectButton extends StatelessWidget {
  final bool isFranceConnectPlus;

  const FranceConnectButton({super.key, this.isFranceConnectPlus = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        _FranceConnectButton(isFranceConnectPlus: isFranceConnectPlus),
        DsfrLink(
          label: 'Qu\'est-ce que France Connect${isFranceConnectPlus ? '+' : ''} ?',
          onTap: () {
            //https://franceconnect.gouv.fr/
            // https://franceconnect.gouv.fr/france-connect-plus.
          },
          icon: DsfrIcons.systemExternalLinkLine,
          iconPosition: DsfrLinkIconPosition.end,
        ),
      ],
    );
  }
}

class _FranceConnectButton extends StatefulWidget {
  const _FranceConnectButton({
    super.key,
    required this.isFranceConnectPlus,
  });

  final bool isFranceConnectPlus;

  @override
  State<_FranceConnectButton> createState() => _FranceConnectButtonState();
}

class _FranceConnectButtonState extends State<_FranceConnectButton> {
  @override
  Widget build(BuildContext context) {
    return Focus(
      canRequestFocus: true,
      child: Builder(builder: (context) {
        final isFocused = Focus.of(context).hasFocus;
        return DsfrFocusWidget(
          isFocused: isFocused,
          child: Semantics(
            button: true,
            child: IntrinsicWidth(
              child: InkWell(
                focusColor: DsfrColorDecisions.backgroundTransparent(context),
                onTap: () {
                  print("onTap");
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(color: DsfrColorDecisions.backgroundActionHighBlueFrance(context)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: Row(
                      spacing: 12,
                      children: [
                        SvgPicture.asset(
                          'packages/flutter_dsfr/assets/icons/france_connect.svg',
                          excludeFromSemantics: true,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'S\'identifier avec',
                              style: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textInvertedBlueFrance(context)),
                            ),
                            Text(
                              'FranceConnect',
                              style:
                                  DsfrTextStyle.bodyMdBold(color: DsfrColorDecisions.textInvertedBlueFrance(context)),
                            ),
                          ],
                        ),
                        widget.isFranceConnectPlus
                            ? SvgPicture.asset(
                                'packages/flutter_dsfr/assets/icons/france_connect_plus.svg',
                                excludeFromSemantics: true,
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
