import '../../../core/app_export.dart';

/// This class is used in the [time_item_widget] screen.
class TimeItemModel {
  TimeItemModel({
    this.circleImage,
    this.androidDeveloper,
    this.robertDidYou,
    this.time1,
    this.time,
    this.id,
  }) {
    circleImage = circleImage ?? Rx(ImageConstant.imgEllipse362);
    androidDeveloper = androidDeveloper ?? Rx("Android Developer");
    robertDidYou = robertDidYou ?? Rx("Robert: Did you check the last task?");
    time1 = time1 ?? Rx("15:35");
    time = time ?? Rx("15:35");
    id = id ?? Rx("");
  }

  Rx<String>? circleImage;

  Rx<String>? androidDeveloper;

  Rx<String>? robertDidYou;

  Rx<String>? time1;

  Rx<String>? time;

  Rx<String>? id;
}
