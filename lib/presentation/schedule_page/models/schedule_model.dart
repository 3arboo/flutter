import '../../../core/app_export.dart';
import 'one_item_model.dart';
import 'userinterviews_item_model.dart';

/// This class defines the variables used in the [schedule_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ScheduleModel {
  Rx<List<OneItemModel>> oneItemList = Rx([
    OneItemModel(one: "1".obs, mon: "Mon".obs),
    OneItemModel(one: "2".obs, mon: "Tue".obs),
    OneItemModel(one: "3".obs, mon: "Wed".obs),
    OneItemModel(one: "4".obs, mon: "Thu".obs),
    OneItemModel(one: "5".obs, mon: "Fri".obs),
    OneItemModel(one: "6".obs, mon: "Sat".obs),
    OneItemModel(one: "7".obs, mon: "Sun".obs)
  ]);

  Rx<List<UserinterviewsItemModel>> userinterviewsItemList = Rx([
    UserinterviewsItemModel(
        userInterviews: "User Interviews".obs,
        sixteenMillionOneThousandEight: "16:00 - 18:30".obs,
        userInterviews1: ImageConstant.imgEllipse4.obs,
        userInterviews2: ImageConstant.imgEllipse5.obs)
  ]);
}
