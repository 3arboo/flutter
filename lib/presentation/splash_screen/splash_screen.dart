import 'package:tasks/widgets/custom_elevated_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 23.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgClock,
                          height: 47.v,
                          width: 61.h,
                          margin: EdgeInsets.only(left: 14.h)),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_day".tr,
                                style: CustomTextStyles
                                    .titleMediumPilatExtendedffffffff),
                            TextSpan(
                                text: "lbl_task".tr,
                                style: CustomTextStyles
                                    .titleMediumPilatExtendedfffed36a)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 32.v),
                      _buildWorkInProgressPana(),
                      SizedBox(height: 39.v),
                      Container(
                          width: 281.h,
                          margin: EdgeInsets.only(right: 95.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_manage_your_task2".tr,
                                    style:
                                        CustomTextStyles.displayLargeffffffff),
                                TextSpan(
                                    text: "lbl_daytask".tr,
                                    style: theme.textTheme.displayLarge)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildLetsStart()));
  }

  /// Section Widget
  Widget _buildWorkInProgressPana() {
    return Container(
        height: 330.v,
        width: 369.h,
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 4.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(left: 1.h),
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup74),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgTelevision,
                            height: 27.v,
                            width: 33.h,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 79.h)),
                        SizedBox(height: 38.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgThumbsUp,
                            height: 31.v,
                            width: 99.h,
                            margin: EdgeInsets.only(right: 85.h)),
                        SizedBox(height: 13.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgPlant,
                            height: 53.v,
                            width: 33.h,
                            margin: EdgeInsets.only(right: 48.h)),
                        SizedBox(height: 146.v),
                        Divider(color: appTheme.blueGray900, indent: 6.h)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUpPrimary,
              height: 41.v,
              width: 34.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 6.v, right: 71.h)),
          CustomImageView(
              imagePath: ImageConstant.imgClockBlueGray900,
              height: 53.v,
              width: 69.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 115.h)),
          CustomImageView(
              imagePath: ImageConstant.imgCharacter,
              height: 272.v,
              width: 189.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 32.h)),
          CustomImageView(
              imagePath: ImageConstant.imgTable,
              height: 146.v,
              width: 191.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 36.h))
        ]));
  }

  /// Section Widget
  Widget _buildLetsStart() {
    return CustomElevatedButton(
        text: "lbl_let_s_start".tr,
        margin: EdgeInsets.only(left: 26.h, right: 26.h, bottom: 50.v),
        onPressed: () {
          onTapLetsStart();
        });
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapLetsStart() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
