import 'package:tasks/widgets/custom_elevated_button.dart';
import 'widgets/messages_item_widget.dart';
import 'models/messages_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/messages_controller.dart';
import 'models/messages_model.dart';

// ignore_for_file: must_be_immutable
class MessagesPage extends StatelessWidget {
  MessagesPage({Key? key}) : super(key: key);

  MessagesController controller =
      Get.put(MessagesController(MessagesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Column(children: [
                  _buildArrowLeft(),
                  SizedBox(height: 35.v),
                  _buildChat(),
                  SizedBox(height: 32.v),
                  _buildMessages(),
                  SizedBox(height: 48.v),
                  CustomElevatedButton(
                      height: 57.v,
                      width: 175.h,
                      text: "lbl_start_chat".tr,
                      margin: EdgeInsets.only(right: 1.h),
                      buttonTextStyle: CustomTextStyles.titleMediumBlack90016,
                      onPressed: () {
                        onTapStartChat();
                      },
                      alignment: Alignment.centerRight),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeft() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
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
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  height: 47.v,
                  text: "lbl_chat".tr,
                  margin: EdgeInsets.only(right: 10.h),
                  buttonTextStyle: CustomTextStyles.titleSmallOnPrimary)),
          Expanded(
              child: CustomElevatedButton(
                  height: 47.v,
                  text: "lbl_groups".tr,
                  margin: EdgeInsets.only(left: 10.h),
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle: CustomTextStyles.titleSmallMedium,
                  onPressed: () {
                    onTapGroups();
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildMessages() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 33.v);
            },
            itemCount:
                controller.messagesModelObj.value.messagesItemList.value.length,
            itemBuilder: (context, index) {
              MessagesItemModel model = controller
                  .messagesModelObj.value.messagesItemList.value[index];
              return MessagesItemWidget(model);
            })));
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

  /// Navigates to the messageGroupsScreen when the action is triggered.
  onTapGroups() {
    Get.toNamed(
      AppRoutes.messageGroupsScreen,
    );
  }

  /// Navigates to the newMessageScreen when the action is triggered.
  onTapStartChat() {
    Get.toNamed(
      AppRoutes.newMessageScreen,
    );
  }
}
