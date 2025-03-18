import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FranceConnectButton extends StatelessWidget {
  final bool isFranceConnectPlus;
  final VoidCallback? onTapButton;
  final VoidCallback? onTapLink;
  final bool enabled;
  final String linkLabel;
  final String buttonPrefixLabel;
  final String buttonBoldLabel;

  const FranceConnectButton._({
    super.key,
    required this.isFranceConnectPlus,
    this.onTapButton,
    this.onTapLink,
    this.enabled = true,
    required this.linkLabel,
    required this.buttonPrefixLabel,
    required this.buttonBoldLabel,
  });

  const FranceConnectButton.franceConnect({
    final Key? key,
    final VoidCallback? onTapButton,
    final VoidCallback? onTapLink,
    final bool enabled = true,
    final String buttonPrefixLabel = 'S\'identifier avec',
    final String buttonBoldLabel = 'FranceConnect',
    final String linkLabel = 'Qu\'est-ce que France Connect ?',
  }) : this._(
          key: key,
          isFranceConnectPlus: false,
          onTapButton: onTapButton,
          onTapLink: onTapLink,
          enabled: enabled,
          linkLabel: linkLabel,
          buttonPrefixLabel: buttonPrefixLabel,
          buttonBoldLabel: buttonBoldLabel,
        );

  const FranceConnectButton.franceConnectPlus({
    final Key? key,
    final VoidCallback? onTapButton,
    final VoidCallback? onTapLink,
    final bool enabled = true,
    final String buttonPrefixLabel = 'S\'identifier avec',
    final String buttonBoldLabel = 'FranceConnect',
    final String linkLabel = 'Qu\'est-ce que France Connect ?',
  }) : this._(
          key: key,
          isFranceConnectPlus: true,
          onTapButton: onTapButton,
          onTapLink: onTapLink,
          enabled: enabled,
          linkLabel: linkLabel,
          buttonPrefixLabel: buttonPrefixLabel,
          buttonBoldLabel: buttonBoldLabel,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        _FranceConnectButton(
          isFranceConnectPlus: isFranceConnectPlus,
          onTap: onTapButton,
          enabled: enabled,
          buttonPrefixLabel: buttonPrefixLabel,
          buttonBoldLabel: buttonBoldLabel,
        ),
        DsfrLink(
          label: linkLabel,
          onTap: onTapLink,
          icon: DsfrIcons.systemExternalLinkLine,
          iconPosition: DsfrLinkIconPosition.end,
          enabled: enabled,
        ),
      ],
    );
  }
}

class _FranceConnectButton extends StatefulWidget {
  final bool isFranceConnectPlus;
  final VoidCallback? onTap;
  final bool enabled;
  final String buttonPrefixLabel;
  final String buttonBoldLabel;

  const _FranceConnectButton({
    required this.isFranceConnectPlus,
    this.onTap,
    required this.enabled,
    required this.buttonPrefixLabel,
    required this.buttonBoldLabel,
  });

  @override
  State<_FranceConnectButton> createState() => _FranceConnectButtonState();
}

class _FranceConnectButtonState extends State<_FranceConnectButton> with MaterialStateMixin<_FranceConnectButton> {
  @override
  Widget build(BuildContext context) {
    final enabled = widget.enabled && widget.onTap != null;
    return Builder(builder: (context) {
      return DsfrFocusWidget(
        isFocused: isFocused,
        child: Semantics(
          button: true,
          child: IntrinsicWidth(
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: enabled
                      ? DsfrColorDecisions.backgroundActionHighBlueFrance(context)
                      : DsfrColorDecisions.backgroundDisabledGrey(context)),
              child: Material(
                color: DsfrColorDecisions.backgroundTransparent(context),
                child: InkWell(
                  onTap: enabled ? widget.onTap : null,
                  onHighlightChanged: updateMaterialState(WidgetState.pressed),
                  onHover: updateMaterialState(WidgetState.hovered),
                  focusColor: DsfrColorDecisions.backgroundTransparent(context),
                  canRequestFocus: enabled,
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
                              widget.buttonPrefixLabel,
                              style: DsfrTextStyle.bodyMd(color: _getTextColor(enabled)),
                            ),
                            Text(
                              widget.buttonBoldLabel,
                              style: DsfrTextStyle.bodyMdBold(color: _getTextColor(enabled)),
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

  Color _getTextColor(bool enabled) {
    return enabled ? DsfrColorDecisions.textInvertedBlueFrance(context) : DsfrColorDecisions.textDisabledGrey(context);
  }
}
