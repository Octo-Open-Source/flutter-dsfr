import 'package:flutter/material.dart';
import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/atoms/dsfr_group.dart';
import 'package:flutter_dsfr/components/radios/dsfr_radio_icon.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_text_style.dart';
import 'package:flutter_dsfr/fondamentaux/dsfr_spacings.g.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';
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
    this.componentState = const DsfrComponentState.none(),
    required this.size,
  }) : assert(size != DsfrComponentSize.lg);

  final String label;
  final String? description;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final bool enabled;
  final DsfrComponentState componentState;
  final DsfrComponentSize size;

  @override
  Widget build(BuildContext context) {
    final state = GroupProvider.of(context)?.componentState.state ?? this.componentState.state;
    return Semantics(
      enabled: enabled,
      child: DsfrFormState(
        componentState: componentState,
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
                    DsfrRadioIcon(
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
      DsfrComponentSize.lg =>  throw UnimplementedError('Size $size is not implemented'),
    };
  }
}
