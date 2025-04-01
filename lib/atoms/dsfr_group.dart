import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/helpers/color_utils.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';

enum Direction {
  vertical,
  horizontal,
}

class DsfrGroup<T extends Widget> extends StatelessWidget {
  final String label;
  final String? description;
  final DsfrComponentState componentState;
  final Direction direction;
  final List<T> children;
  final Widget? separator;

  const DsfrGroup({
    super.key,
    required this.label,
    this.description,
    this.componentState = const DsfrComponentState.none(),
    this.direction = Direction.vertical,
    required this.children,
    this.separator,
  });

  @override
  Widget build(BuildContext context) {
    return DsfrFormState(
      componentState: componentState,
      child: GroupProvider(
        componentState: componentState,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: DsfrTextStyle.bodyMd(color: getTextColor(context, componentState.state)),
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
            direction == Direction.vertical
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: DsfrSpacings.s2w,
                    children: _childrenWithSeparator,
                  )
                : Wrap(
                    spacing: DsfrSpacings.s1w,
                    runSpacing: DsfrSpacings.s1w,
                    children: children.map((final widget) {
                      return widget as Widget;
                    }).toList(),
                  ),
          ],
        ),
      ),
    );
  }

  List<Widget> get _childrenWithSeparator {
    if (separator == null) return children;
    return children.isEmpty
        ? []
        : List.generate(
            children.length * 2,
            (i) => i.isEven ? children[i ~/ 2] : separator!,
          );
  }
}

class GroupProvider extends InheritedWidget {
  final DsfrComponentState componentState;

  const GroupProvider({
    super.key,
    required this.componentState,
    required super.child,
  });

  static GroupProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GroupProvider>();
  }

  @override
  bool updateShouldNotify(GroupProvider oldWidget) {
    return oldWidget.componentState != componentState;
  }
}
