import '../../../core/app_export.dart';

/// This class is used in the [one_item_widget] screen.
class OneItemModel {
  OneItemModel({
    this.one,
    this.mon,
    this.id,
  }) {
    one = one ?? Rx("1");
    mon = mon ?? Rx("Mon");
    id = id ?? Rx("");
  }

  Rx<String>? one;

  Rx<String>? mon;

  Rx<String>? id;
}
