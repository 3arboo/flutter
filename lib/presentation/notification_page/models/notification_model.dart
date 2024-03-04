import '../../../core/app_export.dart';
import 'notification_item_model.dart';

/// This class defines the variables used in the [notification_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {
  Rx<List<NotificationItemModel>> notificationItemList = Rx([
    NotificationItemModel(
        circleImage: ImageConstant.imgEllipse3613.obs, duration: "4 hours".obs),
    NotificationItemModel(
        circleImage: ImageConstant.imgEllipse3614.obs, duration: "31 min".obs)
  ]);
}
