import 'package:tasks/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/new_message_controller.dart';

class NewMessageScreen extends GetWidget<NewMessageController> {
  const NewMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 39.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 27.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildArrowLeft(),
                                    SizedBox(height: 38.v),
                                    Row(children: [
                                      CustomIconButton(
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          padding: EdgeInsets.all(11.h),
                                          decoration: IconButtonStyleHelper
                                              .fillPrimaryTL23,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgIconsaxBrokenProfile2user)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 18.h,
                                              top: 15.v,
                                              bottom: 14.v),
                                          child: Text("lbl_create_a_group".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 29.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 2.h),
                                        child: _buildSeventyEight(
                                            berrett: "lbl_amelia".tr,
                                            b: "lbl_a".tr)),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle6,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 14.v,
                                              bottom: 15.v),
                                          child: Text("lbl_alexander".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse41,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 15.v,
                                              bottom: 14.v),
                                          child: Text("lbl_avery".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse36,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 14.v,
                                              bottom: 15.v),
                                          child: Text("lbl_asher".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 2.h),
                                        child: _buildSeventyEight(
                                            berrett: "lbl_berrett".tr,
                                            b: "lbl_b".tr)),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse44,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 15.v,
                                              bottom: 14.v),
                                          child: Text("lbl_benjamin".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse45,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 15.v,
                                              bottom: 14.v),
                                          child: Text("lbl_brayden".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse46,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 14.v,
                                              bottom: 15.v),
                                          child: Text("lbl_berrett".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse47,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 14.v,
                                              bottom: 15.v),
                                          child: Text("lbl_braxton".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 2.h),
                                        child: _buildSeventyEight(
                                            berrett: "lbl_charlotte".tr,
                                            b: "lbl_c".tr)),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse41,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 19.h,
                                              top: 15.v,
                                              bottom: 14.v),
                                          child: Text("lbl_camelia".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ])
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeft() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                      child: Text("lbl_new_message".tr,
                          style: theme.textTheme.titleLarge)),
                  CustomImageView(
                      imagePath: ImageConstant.imgSearchOnprimarycontainer,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(bottom: 3.v))
                ])));
  }

  /// Common widget
  Widget _buildSeventyEight({
    required String berrett,
    required String b,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse43,
          height: 47.adaptSize,
          width: 47.adaptSize,
          radius: BorderRadius.circular(23.h)),
      Padding(
          padding: EdgeInsets.only(left: 17.h, top: 14.v, bottom: 15.v),
          child: Text(berrett,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: theme.colorScheme.onPrimaryContainer))),
      Spacer(),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 13.v),
          child: Text(b,
              style: CustomTextStyles.titleMediumPrimary
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
