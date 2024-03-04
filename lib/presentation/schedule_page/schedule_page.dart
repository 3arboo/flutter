import 'package:tasks/widgets/app_bar/custom_app_bar.dart';
import 'package:tasks/widgets/app_bar/appbar_leading_image.dart';
import 'package:tasks/widgets/app_bar/appbar_title.dart';
import 'package:tasks/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'widgets/one_item_widget.dart';
import 'models/one_item_model.dart';
import 'widgets/userinterviews_item_widget.dart';
import 'models/userinterviews_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/schedule_controller.dart';
import 'models/schedule_model.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatelessWidget {
  SchedulePage({Key? key}) : super(key: key);

  ScheduleController controller =
      Get.put(ScheduleController(ScheduleModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 26.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("lbl_november".tr,
                              style: CustomTextStyles.titleLargeSemiBold)),
                      SizedBox(height: 27.v),
                      _buildOne(),
                      SizedBox(height: 35.v),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("lbl_today_s_tasks".tr,
                              style: CustomTextStyles.titleLargeSemiBold)),
                      SizedBox(height: 25.v),
                      _buildUserInterviews()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 41.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_schedule".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath:
                  ImageConstant.imgIconsaxLinearAddsquareOnprimarycontainer,
              margin: EdgeInsets.fromLTRB(29.h, 15.v, 29.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildOne() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 69.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 29.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 15.h);
                },
                itemCount:
                    controller.scheduleModelObj.value.oneItemList.value.length,
                itemBuilder: (context, index) {
                  OneItemModel model = controller
                      .scheduleModelObj.value.oneItemList.value[index];
                  return OneItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildUserInterviews() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.h),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 18.v);
                },
                itemCount: controller
                    .scheduleModelObj.value.userinterviewsItemList.value.length,
                itemBuilder: (context, index) {
                  UserinterviewsItemModel model = controller.scheduleModelObj
                      .value.userinterviewsItemList.value[index];
                  return UserinterviewsItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
