import 'package:tasks/presentation/messages_page/messages_page.dart';
import 'package:tasks/presentation/schedule_page/schedule_page.dart';
import 'package:tasks/presentation/notification_page/notification_page.dart';
import 'package:tasks/widgets/custom_elevated_button.dart';
import 'widgets/time_item_widget.dart';
import 'models/time_item_model.dart';
import 'package:tasks/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/message_groups_controller.dart';

class MessageGroupsScreen extends GetWidget<MessageGroupsController> {
  const MessageGroupsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 39.v),
                child: Column(children: [
                  _buildArrowLeft(),
                  SizedBox(height: 35.v),
                  _buildChat(),
                  SizedBox(height: 32.v),
                  Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 33.v);
                          },
                          itemCount: controller.messageGroupsModelObj.value
                              .timeItemList.value.length,
                          itemBuilder: (context, index) {
                            TimeItemModel model = controller
                                .messageGroupsModelObj
                                .value
                                .timeItemList
                                .value[index];
                            return TimeItemWidget(model);
                          })))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildArrowLeft() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 3.v),
              onTap: () {
                onTapImgArrowLeft();
              }),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child:
                  Text("lbl_messages".tr, style: theme.textTheme.titleLarge)),
          CustomImageView(
              imagePath: ImageConstant.imgIconsaxBrokenEdit,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 3.v),
              onTap: () {
                onTapImgIconsaxBrokenEdit();
              })
        ]));
  }

  /// Section Widget
  Widget _buildChat() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  height: 47.v,
                  text: "lbl_chat".tr,
                  margin: EdgeInsets.only(right: 10.h),
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle: CustomTextStyles.titleSmallMedium,
                  onPressed: () {
                    onTapChat();
                  })),
          Expanded(
              child: CustomElevatedButton(
                  height: 47.v,
                  text: "lbl_groups".tr,
                  margin: EdgeInsets.only(left: 10.h),
                  buttonTextStyle: CustomTextStyles.titleSmallOnPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Chat:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Calendar:
        return AppRoutes.schedulePage;
      case BottomBarEnum.Notification:
        return AppRoutes.notificationPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.messagesPage:
        return MessagesPage();
      case AppRoutes.schedulePage:
        return SchedulePage();
      case AppRoutes.notificationPage:
        return NotificationPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the newMessageScreen when the action is triggered.
  onTapImgIconsaxBrokenEdit() {
    Get.toNamed(
      AppRoutes.newMessageScreen,
    );
  }

  /// Navigates to the messagesContainerScreen when the action is triggered.
  onTapChat() {
    Get.toNamed(
      AppRoutes.messagesContainerScreen,
    );
  }
}
