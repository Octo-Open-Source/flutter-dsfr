import 'package:flutter/material.dart';
import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/composants/radios/radio_icon.dart';
import 'package:flutter_dsfr/fondamentaux/color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/fonts.dart';
import 'package:flutter_dsfr/fondamentaux/spacing.g.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

class DsfrRadioButton<T> extends StatelessWidget {
  const DsfrRadioButton({
    super.key,
    required this.label,
    this.description,
    required this.value,
    this.groupValue,
    this.onChanged,
    this.enabled = true,
    this.composantState = const DsfrComposantState.none(),
    required this.size,
  }) : assert(size != DsfrComponentSize.lg);

  final String label;
  final String? description;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final bool enabled;
  final DsfrComposantState composantState;
  final DsfrComponentSize size;

  @override
  Widget build(BuildContext context) {
    final state =
        GroupProvider.of(context)?.composantState.state ?? this.composantState?.state ?? DsfrComposantStateEnum.none;
    return Semantics(
      enabled: enabled,
      child: DsfrFormState(
        composantState: composantState,
        child: Material(
          color: DsfrColorDecisions.backgroundTransparent(context),
          child: InkWell(
            onTap: (!enabled || onChanged == null) ? null : () => onChanged!(value),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: DsfrSpacings.s1w,
                  children: [
                    RadioIcon(
                      key: ValueKey(label),
                      value: value,
                      groupValue: groupValue,
                      enabled: enabled,
                      state: state,
                      size: _getIconSize(),
                    ),
                    Text(
                      label,
                      style: DsfrTextStyle.bodyMd(
                        color: enabled
                            ? getTextColor(context, state, defaultColor: DsfrColorDecisions.textLabelGrey(context))
                            : DsfrColorDecisions.textDisabledGrey(context),
                      ),
                    )
                  ],
                ),
                if (description != null)
                  Padding(
                    padding: EdgeInsets.only(left: _getIconSize() + DsfrSpacings.s1w),
                    child: Text(
                      description!,
                      style: DsfrTextStyle.bodyXs(
                        color: enabled
                            ? DsfrColorDecisions.textMentionGrey(context)
                            : DsfrColorDecisions.textDisabledGrey(context),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double _getIconSize() {
    return switch (size) {
      DsfrComponentSize.md => 24.0,
      DsfrComponentSize.sm => 16.0,
      DsfrComponentSize.lg => throw UnimplementedError(),
    };
  }
}
