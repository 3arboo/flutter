import '../../../core/app_export.dart';

/// This class is used in the [messages_item_widget] screen.
class MessagesItemModel {
  MessagesItemModel({
    this.oliviaAnna,
    this.oliviaAnna1,
    this.hiPleaseCheck,
    this.time,
    this.id,
  }) {
    oliviaAnna = oliviaAnna ?? Rx(ImageConstant.imgEllipse36);
    oliviaAnna1 = oliviaAnna1 ?? Rx("Olivia Anna");
    hiPleaseCheck =
        hiPleaseCheck ?? Rx("Hi, please check the last task, that I....");
    time = time ?? Rx("31 min");
    id = id ?? Rx("");
  }

  Rx<String>? oliviaAnna;

  Rx<String>? oliviaAnna1;

  Rx<String>? hiPleaseCheck;

  Rx<String>? time;

  Rx<String>? id;
}
