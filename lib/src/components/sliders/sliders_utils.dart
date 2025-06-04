import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';

double getTrackHeight(DsfrComponentSize size) {
  return switch (size) {
    DsfrComponentSize.sm => 8.0,
    DsfrComponentSize.md => 12.0,
    _ => throw UnimplementedError('Size $size is not implemented'),
  };
}

String defaultLabelBuilder(double value) {
  return (value * 100).toInt().toString();
}
