import '../../../core/app_export.dart';

/// This class is used in the [notification_item_widget] screen.
class NotificationItemModel {
  NotificationItemModel({
    this.circleImage,
    this.duration,
    this.id,
  }) {
    circleImage = circleImage ?? Rx(ImageConstant.imgEllipse3613);
    duration = duration ?? Rx("4 hours");
    id = id ?? Rx("");
  }

  Rx<String>? circleImage;

  Rx<String>? duration;

  Rx<String>? id;
}
