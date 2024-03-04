import 'package:tasks/widgets/custom_search_view.dart';
import 'package:tasks/widgets/custom_icon_button.dart';
import 'widgets/realestatewebsite_item_widget.dart';
import 'models/realestatewebsite_item_model.dart';
import 'widgets/mobileappwireframe_item_widget.dart';
import 'models/mobileappwireframe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/home_controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 28.v),
                  _buildWelcomeBack(),
                  SizedBox(height: 30.v),
                  _buildSearch(),
                  SizedBox(height: 37.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22.h),
                      child: _buildOngoingProjects(
                          ongoingProjects: "lbl_completed_tasks".tr,
                          seeAll: "lbl_see_all".tr)),
                  SizedBox(height: 12.v),
                  _buildRealEstateWebsite(),
                  SizedBox(height: 37.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22.h),
                      child: _buildOngoingProjects(
                          ongoingProjects: "msg_ongoing_projects".tr,
                          seeAll: "lbl_see_all".tr)),
                  SizedBox(height: 15.v),
                  _buildMobileAppWireframe()
                ]))));
  }

  /// Section Widget
  Widget _buildWelcomeBack() {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 28.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_welcome_back".tr,
                        style: CustomTextStyles.labelMediumPrimary),
                    SizedBox(height: 4.v),
                    Text("lbl_fazil_laghari".tr,
                        style: CustomTextStyles.titleLargePilatExtendedSemiBold)
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle6,
              height: 48.v,
              width: 47.h,
              radius: BorderRadius.circular(23.h),
              margin: EdgeInsets.only(bottom: 2.v),
              onTap: () {
                onTapImgImage();
              })
        ]));
  }

  /// Section Widget
  Widget _buildSearch() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "lbl_seach_tasks".tr)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: CustomIconButton(
                  height: 58.v,
                  width: 57.h,
                  padding: EdgeInsets.all(16.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconsaxLinearSetting4)))
        ]));
  }

  /// Section Widget
  Widget _buildRealEstateWebsite() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 175.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 22.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                      width: 170.0.h,
                      child: Divider(
                          height: 6.v,
                          thickness: 6.v,
                          color: appTheme.amber100,
                          indent: 3.5.h,
                          endIndent: 3.5.h));
                },
                itemCount: controller
                    .homeModelObj.value.realestatewebsiteItemList.value.length,
                itemBuilder: (context, index) {
                  RealestatewebsiteItemModel model = controller.homeModelObj
                      .value.realestatewebsiteItemList.value[index];
                  return RealestatewebsiteItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildMobileAppWireframe() {
    return SizedBox(
        height: 431.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Obx(() => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 15.v);
                  },
                  itemCount: controller.homeModelObj.value
                      .mobileappwireframeItemList.value.length,
                  itemBuilder: (context, index) {
                    MobileappwireframeItemModel model = controller.homeModelObj
                        .value.mobileappwireframeItemList.value[index];
                    return MobileappwireframeItemWidget(model);
                  }))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(32.h, 334.v, 38.h, 38.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, bottom: 3.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 20.v,
                                      width: 46.h,
                                      margin: EdgeInsets.only(left: 1.h),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse3,
                                                height: 20.adaptSize,
                                                width: 20.adaptSize,
                                                radius:
                                                    BorderRadius.circular(10.h),
                                                alignment:
                                                    Alignment.centerLeft),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse4,
                                                height: 20.adaptSize,
                                                width: 20.adaptSize,
                                                radius:
                                                    BorderRadius.circular(10.h),
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse5,
                                                height: 20.adaptSize,
                                                width: 20.adaptSize,
                                                radius:
                                                    BorderRadius.circular(10.h),
                                                alignment:
                                                    Alignment.centerRight)
                                          ])),
                                  SizedBox(height: 7.v),
                                  Text("msg_due_on_04_august".tr,
                                      style: CustomTextStyles
                                          .bodyMediumOnPrimaryContainer)
                                ])),
                        SizedBox(
                            height: 59.adaptSize,
                            width: 59.adaptSize,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 59.adaptSize,
                                      width: 59.adaptSize,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(29.h),
                                          border: Border.all(
                                              color: theme
                                                  .colorScheme.primaryContainer,
                                              width: 2.h)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_70".tr,
                                      style: theme.textTheme.labelMedium))
                            ]))
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildOngoingProjects({
    required String ongoingProjects,
    required String seeAll,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(ongoingProjects,
          style: CustomTextStyles.titleLargeSemiBold
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(seeAll,
              style: CustomTextStyles.bodyLargePrimary
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImgImage() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}
