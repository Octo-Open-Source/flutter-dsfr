import 'package:flutter/widgets.dart';

extension IterableExtension on Iterable<Widget> {
  Iterable<Widget> separator(final Widget element) {
    final result = <Widget>[];
    for (final widget in this) {
      if (result.isNotEmpty) {
        result.add(element);
      }
      result.add(widget);
    }

    return result;
  }
}
