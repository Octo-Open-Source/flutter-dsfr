import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_state.dart';

class DsfrRadioIcon<T> extends StatelessWidget {
  const DsfrRadioIcon({
    super.key,
    required this.value,
    required this.groupValue,
    this.enabled = true,
    this.state = DsfrComponentStateEnum.none,
    required this.size,
  });

  final T value;
  final T? groupValue;
  final bool enabled;
  final DsfrComponentStateEnum state;
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
    } else if (state == DsfrComponentStateEnum.error) {
      return DsfrColorDecisions.borderPlainError(context);
    } else if (state == DsfrComponentStateEnum.success) {
      return DsfrColorDecisions.borderPlainSuccess(context);
    } else {
      return getFillColor(context);
    }
  }
}
