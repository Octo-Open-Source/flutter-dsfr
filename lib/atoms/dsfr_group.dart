import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class DsfrGroup<T> extends StatelessWidget {
  final List<T> widgets;
  final String label;
  final String? description;
  final DsfrComposantState composantState;

  const DsfrGroup({
    super.key,
    required this.widgets,
    required this.label,
    this.description,
    this.composantState = const DsfrComposantState.none(),
  });

  @override
  Widget build(BuildContext context) {
    return DsfrFormState(
      composantState: composantState,
      child: GroupProvider(
        composantState: composantState,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: DsfrTextStyle.bodyMd(color: getTextColor(context, composantState.state)),
            ),
            SizedBox(height: description != null ? DsfrSpacings.s1w : DsfrSpacings.s2w),
            description != null
                ? Padding(
                    padding: const EdgeInsets.only(bottom: DsfrSpacings.s2w),
                    child: Text(
                      description!,
                      style: DsfrTextStyle.bodyXs(color: DsfrColorDecisions.textMentionGrey(context)),
                    ),
                  )
                : const SizedBox.shrink(),
            Column(
              spacing: DsfrSpacings.s2w,
              children: widgets.map((final widget) {
                return widget as Widget;
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class GroupProvider extends InheritedWidget {
  final DsfrComposantState composantState;

  const GroupProvider({
    super.key,
    required this.composantState,
    required super.child,
  });

  static GroupProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GroupProvider>();
  }

  @override
  bool updateShouldNotify(GroupProvider oldWidget) {
    return oldWidget.composantState != composantState;
  }
}
