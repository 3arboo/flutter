import '../../../core/app_export.dart';
import 'time_item_model.dart';

/// This class defines the variables used in the [message_groups_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageGroupsModel {
  Rx<List<TimeItemModel>> timeItemList = Rx([
    TimeItemModel(
        time: "15:35".obs,
        circleImage: ImageConstant.imgEllipse362.obs,
        androidDeveloper: "Android Developer".obs,
        robertDidYou: "Robert: Did you check the last task?".obs,
        time1: "15:35".obs),
    TimeItemModel(
        time: "15:35".obs,
        circleImage: ImageConstant.imgEllipse365.obs,
        androidDeveloper: "IOS Developer".obs,
        robertDidYou: "Robert: Did you check the last task?".obs,
        time1: "15:35".obs),
    TimeItemModel(time: "15:35".obs),
    TimeItemModel(
        time: "15:35".obs,
        circleImage: ImageConstant.imgEllipse367.obs,
        androidDeveloper: "Back-End Team".obs,
        robertDidYou: "Robert: Did you check the last task?".obs,
        time1: "15:35".obs),
    TimeItemModel(time: "15:35".obs),
    TimeItemModel(
        time: "15:35".obs,
        circleImage: ImageConstant.imgEllipse369.obs,
        androidDeveloper: "Android Developer".obs,
        robertDidYou: "Robert: Did you check the last task?".obs,
        time1: "15:35".obs),
    TimeItemModel(time: "15:35".obs),
    TimeItemModel(time: "15:35".obs)
  ]);
}
