import '../../../core/app_export.dart';

/// This class is used in the [mobileappwireframe_item_widget] screen.
class MobileappwireframeItemModel {
  MobileappwireframeItemModel({
    this.mobileAppWireframe,
    this.teamMembers,
    this.circleImage,
    this.circleImage1,
    this.circleImage2,
    this.month,
    this.seventyFive,
    this.id,
  }) {
    mobileAppWireframe = mobileAppWireframe ?? Rx("Mobile App Wireframe");
    teamMembers = teamMembers ?? Rx("Team members");
    circleImage = circleImage ?? Rx(ImageConstant.imgEllipse3);
    circleImage1 = circleImage1 ?? Rx(ImageConstant.imgEllipse4);
    circleImage2 = circleImage2 ?? Rx(ImageConstant.imgEllipse5);
    month = month ?? Rx("Due on : 21 March");
    seventyFive = seventyFive ?? Rx("75%");
    id = id ?? Rx("");
  }

  Rx<String>? mobileAppWireframe;

  Rx<String>? teamMembers;

  Rx<String>? circleImage;

  Rx<String>? circleImage1;

  Rx<String>? circleImage2;

  Rx<String>? month;

  Rx<String>? seventyFive;

  Rx<String>? id;
}
