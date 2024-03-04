import '../../../core/app_export.dart';
import '../models/notification_model.dart';

/// A controller class for the NotificationPage.
///
/// This class manages the state of the NotificationPage, including the
/// current notificationModelObj
class NotificationController extends GetxController {
  NotificationController(this.notificationModelObj);

  Rx<NotificationModel> notificationModelObj;
}
