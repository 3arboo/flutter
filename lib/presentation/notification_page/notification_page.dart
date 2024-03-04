import 'package:tasks/widgets/app_bar/custom_app_bar.dart';
import 'package:tasks/widgets/app_bar/appbar_leading_image.dart';
import 'package:tasks/widgets/app_bar/appbar_title.dart';
import 'widgets/notification_item_widget.dart';
import 'models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/notification_controller.dart';
import 'models/notification_model.dart';

// ignore_for_file: must_be_immutable
class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);

  NotificationController controller =
      Get.put(NotificationController(NotificationModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 18.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 28.h),
                              child: Text("lbl_new".tr,
                                  style: theme.textTheme.titleLarge))),
                      SizedBox(height: 17.v),
                      _buildChat(),
                      SizedBox(height: 23.v),
                      _buildChat1(),
                      SizedBox(height: 23.v),
                      _buildChat2(),
                      SizedBox(height: 23.v),
                      _buildChat3(),
                      SizedBox(height: 37.v),
                      _buildEarlier(),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 41.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_notifications".tr));
  }

  /// Section Widget
  Widget _buildChat() {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse36,
                height: 47.adaptSize,
                width: 47.adaptSize,
                radius: BorderRadius.circular(23.h)),
            Container(
                width: 227.h,
                margin: EdgeInsets.only(left: 17.h, top: 4.v, bottom: 2.v),
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_olivia_anna2".tr,
                          style: CustomTextStyles.titleSmallffffffff),
                      TextSpan(
                          text: "msg_left_a_comment_in".tr,
                          style: CustomTextStyles.bodyMediumff8caab8),
                      TextSpan(
                          text: "msg_mobile_app_design".tr,
                          style: CustomTextStyles.bodyMediumfffed36a)
                    ]),
                    textAlign: TextAlign.left))
          ])),
          Padding(
              padding: EdgeInsets.only(left: 53.h, top: 18.v, bottom: 18.v),
              child: Text("lbl_31_min".tr, style: theme.textTheme.labelSmall))
        ]));
  }

  /// Section Widget
  Widget _buildChat1() {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse3613,
              height: 47.adaptSize,
              width: 47.adaptSize,
              radius: BorderRadius.circular(23.h)),
          Container(
              width: 243.h,
              margin: EdgeInsets.only(left: 17.h, top: 4.v, bottom: 2.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_robert_brown2".tr,
                        style: CustomTextStyles.titleSmallffffffff),
                    TextSpan(
                        text: "msg_left_a_comment_in".tr,
                        style: CustomTextStyles.bodyMediumff8caab8),
                    TextSpan(
                        text: "msg_mobile_app_design".tr,
                        style: CustomTextStyles.bodyMediumfffed36a)
                  ]),
                  textAlign: TextAlign.left)),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 18.v),
              child: Text("lbl_31_min".tr, style: theme.textTheme.labelSmall))
        ]));
  }

  /// Section Widget
  Widget _buildChat2() {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse3614,
                height: 47.adaptSize,
                width: 47.adaptSize,
                radius: BorderRadius.circular(23.h)),
            Container(
                width: 197.h,
                margin: EdgeInsets.only(left: 17.h, top: 4.v, bottom: 2.v),
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_sophia2".tr,
                          style: CustomTextStyles.titleSmallffffffff),
                      TextSpan(
                          text: "msg_left_a_comment_in".tr,
                          style: CustomTextStyles.bodyMediumff8caab8),
                      TextSpan(
                          text: "msg_mobile_app_design".tr,
                          style: CustomTextStyles.bodyMediumfffed36a)
                    ]),
                    textAlign: TextAlign.left))
          ])),
          Padding(
              padding: EdgeInsets.only(left: 83.h, top: 18.v, bottom: 18.v),
              child: Text("lbl_31_min".tr, style: theme.textTheme.labelSmall))
        ]));
  }

  /// Section Widget
  Widget _buildChat3() {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse3611,
                height: 47.adaptSize,
                width: 47.adaptSize,
                radius: BorderRadius.circular(23.h)),
            Container(
                width: 186.h,
                margin: EdgeInsets.only(left: 17.h, top: 4.v, bottom: 2.v),
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_anna".tr,
                          style: CustomTextStyles.titleSmallffffffff),
                      TextSpan(
                          text: "msg_left_a_comment_in".tr,
                          style: CustomTextStyles.bodyMediumff8caab8),
                      TextSpan(
                          text: "msg_mobile_app_design".tr,
                          style: CustomTextStyles.bodyMediumfffed36a)
                    ]),
                    textAlign: TextAlign.left))
          ]),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 18.v),
              child: Text("lbl_31_min".tr, style: theme.textTheme.labelSmall))
        ]));
  }

  /// Section Widget
  Widget _buildEarlier() {
    return Padding(
        padding: EdgeInsets.only(left: 28.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_earlier".tr, style: theme.textTheme.titleLarge),
          SizedBox(height: 17.v),
          Obx(() => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 23.v);
              },
              itemCount: controller
                  .notificationModelObj.value.notificationItemList.value.length,
              itemBuilder: (context, index) {
                NotificationItemModel model = controller.notificationModelObj
                    .value.notificationItemList.value[index];
                return NotificationItemWidget(model);
              }))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
