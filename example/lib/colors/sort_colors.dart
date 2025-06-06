import 'package:example/colors/dsfr_color.dart';

extension SortColors on List<DsfrColor> {
  void sortColorsByName() {
    sort((a, b) => a.name.compareTo(b.name));
  }
}
