import 'package:flutter/material.dart';
import 'package:flutter_dsfr/couleurs.dart';
import 'package:flutter_dsfr/typographies/typographies.dart';

// Dark/Light mode
// Kind primary secondary tertiary
// disabled
// focus
// icones (gauche, droite, seul)

class Boutons extends StatelessWidget {
  final void Function() onPressed;

  const Boutons({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      fillColor: Couleurs.blueFranceSun113,
      hoverColor: Couleurs.blueFranceSun113Hover,
      splashColor: Couleurs.blueFranceSun113Active,
      highlightColor: Couleurs.blueFranceSun113Active,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: Text(
          'Bouton',
          style: TypographiesTextStyle.bodySmMedium(color: Colors.white),
        ),
      ),
    );
  }
}
