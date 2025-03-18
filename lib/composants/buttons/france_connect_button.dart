import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FranceConnectButton extends StatelessWidget {
  final bool isFranceConnectPlus;
  final VoidCallback? onTapButton;
  final VoidCallback? onTapLink;

  const FranceConnectButton({super.key, this.isFranceConnectPlus = false, this.onTapButton, this.onTapLink});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        _FranceConnectButton(
          isFranceConnectPlus: isFranceConnectPlus,
          onTap: onTapButton,
        ),
        DsfrLink(
          label: 'Qu\'est-ce que France Connect${isFranceConnectPlus ? '+' : ''} ?',
          onTap: onTapLink,
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
    this.onTap,
  });

  final bool isFranceConnectPlus;
  final VoidCallback? onTap;

  @override
  State<_FranceConnectButton> createState() => _FranceConnectButtonState();
}

class _FranceConnectButtonState extends State<_FranceConnectButton> with MaterialStateMixin<_FranceConnectButton> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return DsfrFocusWidget(
        isFocused: isFocused,
        child: Semantics(
          button: true,
          child: IntrinsicWidth(
            child: DecoratedBox(
              decoration: BoxDecoration(color: DsfrColorDecisions.backgroundActionHighBlueFrance(context)),
              child: Material(
                color: DsfrColorDecisions.backgroundTransparent(context),
                child: InkWell(
                  onTap: widget.onTap,
                  onHighlightChanged: updateMaterialState(WidgetState.pressed),
                  onHover: updateMaterialState(WidgetState.hovered),
                  focusColor: DsfrColorDecisions.backgroundTransparent(context),
                  canRequestFocus: widget.onTap != null,
                  onFocusChange: updateMaterialState(WidgetState.focused),
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
        ),
      );
    });
  }
}
