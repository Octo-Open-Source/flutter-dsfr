import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class RadioIcon<T> extends StatelessWidget {
  const RadioIcon({
    super.key,
    required this.value,
    required this.groupValue,
    this.enabled = true,
    this.state = DsfrComposantStateEnum.none,
    required this.size,
  });

  final T value;
  final T? groupValue;
  final bool enabled;
  final DsfrComposantStateEnum state;
  final double size;

  @override
  Widget build(final context) {
    final isSelected = groupValue == value;
    final outerDiameter = size;
    final innerDiameter = size / 2;
    return Semantics(
      checked: isSelected,
      selected: isSelected,
      inMutuallyExclusiveGroup: true,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: outerDiameter,
            height: outerDiameter,
            decoration: BoxDecoration(
              border: Border.all(
                color: getStrokeColor(context),
              ),
              borderRadius: BorderRadius.circular(outerDiameter),
            ),
          ),
          AnimatedContainer(
            width: isSelected ? innerDiameter : 0,
            height: isSelected ? innerDiameter : 0,
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: getFillColor(context),
              borderRadius: BorderRadius.circular(innerDiameter),
            ),
          ),
        ],
      ),
    );
  }

  Color getFillColor(BuildContext context) {
    if (!enabled) {
      return DsfrColorDecisions.textDisabledGrey(context);
    } else {
      return DsfrColorDecisions.borderActiveBlueFrance(context);
    }
  }

  Color getStrokeColor(BuildContext context) {
    if (!enabled) {
      return DsfrColorDecisions.borderDisabledGrey(context);
    } else if (state == DsfrComposantStateEnum.error) {
      return DsfrColorDecisions.borderPlainError(context);
    } else if (state == DsfrComposantStateEnum.success) {
      return DsfrColorDecisions.borderPlainSuccess(context);
    } else {
      return getFillColor(context);
    }
  }
}
