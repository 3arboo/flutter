import '../../../core/app_export.dart';
import 'realestatewebsite_item_model.dart';
import 'mobileappwireframe_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<RealestatewebsiteItemModel>> realestatewebsiteItemList = Rx([
    RealestatewebsiteItemModel(
        realEstateWebsite: "Real Estate \nWebsite \nDesign".obs,
        teamMembers: "Team members".obs,
        completed: "Completed".obs,
        oneHundred: "100%".obs),
    RealestatewebsiteItemModel(
        realEstateWebsite: "Finance\nMobile App\nDesign".obs,
        teamMembers: "Team members".obs,
        completed: "Completed".obs,
        oneHundred: "100%".obs),
    RealestatewebsiteItemModel(
        realEstateWebsite: "Wallet\nMobile App\nDesign".obs,
        teamMembers: "Team members".obs,
        completed: "Completed".obs,
        oneHundred: "100%".obs)
  ]);

  Rx<List<MobileappwireframeItemModel>> mobileappwireframeItemList = Rx([
    MobileappwireframeItemModel(
        mobileAppWireframe: "Mobile App Wireframe".obs,
        teamMembers: "Team members".obs,
        circleImage: ImageConstant.imgEllipse3.obs,
        circleImage1: ImageConstant.imgEllipse4.obs,
        circleImage2: ImageConstant.imgEllipse5.obs,
        month: "Due on : 21 March".obs,
        seventyFive: "75%".obs),
    MobileappwireframeItemModel(
        mobileAppWireframe: "Real Estate App Design".obs,
        teamMembers: "Team members".obs,
        circleImage: ImageConstant.imgEllipse3.obs,
        circleImage1: ImageConstant.imgEllipse4.obs,
        circleImage2: ImageConstant.imgEllipse5.obs,
        month: "Due on : 20 June".obs)
  ]);
}
