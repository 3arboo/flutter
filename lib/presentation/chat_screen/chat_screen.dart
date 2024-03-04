import 'package:tasks/widgets/custom_text_form_field.dart';
import 'package:tasks/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/chat_controller.dart';

class ChatScreen extends GetWidget<ChatController> {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildNinetyOne(),
                      SizedBox(height: 50.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: CustomTextFormField(
                              width: 268.h,
                              controller: controller.twentyThreeController,
                              hintText: "msg_hi_please_check2".tr,
                              hintStyle: CustomTextStyles.bodyLarge16,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 13.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillBlueGray1,
                              fillColor: appTheme.blueGray900)),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.only(left: 118.h, right: 12.h),
                          child: _buildNineteen(
                              gotItWillCheck: "msg_hi_please_check2".tr,
                              seen: "lbl_seen".tr)),
                      SizedBox(height: 44.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: CustomTextFormField(
                              width: 268.h,
                              controller: controller.gotitThanksController,
                              hintText: "lbl_got_it_thanks".tr,
                              hintStyle: CustomTextStyles.bodyLarge16,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 13.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillBlueGray1,
                              fillColor: appTheme.blueGray900)),
                      SizedBox(height: 14.v),
                      Container(
                          width: 329.h,
                          margin: EdgeInsets.only(left: 14.h, right: 55.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 14.v),
                          decoration: AppDecoration.fillBluegray900,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
                                Container(
                                    width: 268.h,
                                    margin: EdgeInsets.only(right: 36.h),
                                    child: Text("msg_hi_please_check3".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles.bodyLarge16
                                            .copyWith(height: 1.22)))
                              ])),
                      SizedBox(height: 14.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgCrypyo1,
                          height: 146.v,
                          width: 268.h,
                          margin: EdgeInsets.only(left: 14.h)),
                      SizedBox(height: 44.v),
                      Padding(
                          padding: EdgeInsets.only(left: 126.h, right: 4.h),
                          child: _buildNineteen(
                              gotItWillCheck: "msg_got_it_will_check".tr,
                              seen: "lbl_seen".tr)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildMessage()));
  }

  /// Section Widget
  Widget _buildNinetyOne() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              SizedBox(
                  width: 208.h,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(top: 11.v, bottom: 12.v),
                        onTap: () {
                          onTapImgArrowLeft();
                        }),
                    Spacer(),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse36,
                        height: 47.adaptSize,
                        width: 47.adaptSize,
                        radius: BorderRadius.circular(23.h)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 17.h, top: 5.v, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_olivia_anna".tr,
                                  style: theme.textTheme.titleSmall),
                              SizedBox(height: 2.v),
                              Text("lbl_online".tr,
                                  style: theme.textTheme.bodyMedium)
                            ]))
                  ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgIconsaxBrokenVideo,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 11.v, bottom: 12.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgIconsaxBrokenCallcalling,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 19.h, top: 11.v, bottom: 12.v))
            ])));
  }

  /// Section Widget
  Widget _buildMessage() {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 22.h, bottom: 28.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomTextFormField(
                  controller: controller.messageController,
                  hintText: "lbl_type_a_message".tr,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(13.h, 17.v, 20.h, 16.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgIconsaxBrokenElementequal,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 57.v),
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 16.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgIconsaxBrokenSend,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  suffixConstraints: BoxConstraints(maxHeight: 57.v),
                  borderDecoration: TextFormFieldStyleHelper.fillBlueGray1,
                  fillColor: appTheme.blueGray900)),
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: CustomIconButton(
                  height: 57.adaptSize,
                  width: 57.adaptSize,
                  padding: EdgeInsets.all(16.h),
                  decoration: IconButtonStyleHelper.fillBlueGray,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconsaxBrokenMicrophone2)))
        ]));
  }

  /// Common widget
  Widget _buildNineteen({
    required String gotItWillCheck,
    required String seen,
  }) {
    return Container(
        width: 268.h,
        padding: EdgeInsets.symmetric(horizontal: 5.h),
        decoration: AppDecoration.fillPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 13.v),
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text(gotItWillCheck,
                  style: CustomTextStyles.bodyLargeOnPrimary
                      .copyWith(color: theme.colorScheme.onPrimary))),
          SizedBox(height: 3.v),
          Align(
              alignment: Alignment.centerRight,
              child: Text(seen,
                  style: CustomTextStyles.labelSmallBluegray900
                      .copyWith(color: appTheme.blueGray900)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
