import '../../../core/app_export.dart';

/// This class is used in the [userinterviews_item_widget] screen.
class UserinterviewsItemModel {
  UserinterviewsItemModel({
    this.userInterviews,
    this.sixteenMillionOneThousandEight,
    this.userInterviews1,
    this.userInterviews2,
    this.id,
  }) {
    userInterviews = userInterviews ?? Rx("User Interviews");
    sixteenMillionOneThousandEight =
        sixteenMillionOneThousandEight ?? Rx("16:00 - 18:30");
    userInterviews1 = userInterviews1 ?? Rx(ImageConstant.imgEllipse4);
    userInterviews2 = userInterviews2 ?? Rx(ImageConstant.imgEllipse5);
    id = id ?? Rx("");
  }

  Rx<String>? userInterviews;

  Rx<String>? sixteenMillionOneThousandEight;

  Rx<String>? userInterviews1;

  Rx<String>? userInterviews2;

  Rx<String>? id;
}
