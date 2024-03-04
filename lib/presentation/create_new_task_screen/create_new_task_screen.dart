import 'package:tasks/widgets/custom_text_form_field.dart';
import 'package:tasks/widgets/custom_icon_button.dart';
import 'package:tasks/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/create_new_task_controller.dart';

class CreateNewTaskScreen extends GetWidget<CreateNewTaskController> {
  const CreateNewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 39.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v),
                                onTap: () {
                                  onTapImgArrowLeft();
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 70.h),
                                child: Text("lbl_create_new_task".tr,
                                    style: theme.textTheme.titleLarge))
                          ]))),
                  SizedBox(height: 41.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("lbl_task_title".tr,
                              style: CustomTextStyles.titleLargeSemiBold))),
                  SizedBox(height: 11.v),
                  _buildHiFiWireframe(),
                  SizedBox(height: 29.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("lbl_task_details".tr,
                              style: CustomTextStyles.titleLargeSemiBold))),
                  SizedBox(height: 25.v),
                  _buildDescription(),
                  SizedBox(height: 24.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("msg_add_team_members".tr,
                              style: CustomTextStyles.titleLargeSemiBold))),
                  SizedBox(height: 22.v),
                  _buildNinetyFive(),
                  SizedBox(height: 21.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("lbl_time_date".tr,
                              style: CustomTextStyles.titleLargeSemiBold))),
                  SizedBox(height: 23.v),
                  _buildAM1(),
                  SizedBox(height: 50.v),
                  Text("lbl_add_new".tr, style: theme.textTheme.titleMedium),
                  SizedBox(height: 42.v),
                  _buildCreate(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildHiFiWireframe() {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(
            controller: controller.hiFiWireframeController,
            hintText: "lbl_hi_fi_wireframe".tr,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v)));
  }

  /// Section Widget
  Widget _buildDescription() {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(
            controller: controller.descriptionController,
            hintText: "msg_lorem_ipsum_is_simply2".tr,
            hintStyle: CustomTextStyles.bodySmallOnPrimaryContainer11,
            textInputAction: TextInputAction.done,
            maxLines: 3,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v)));
  }

  /// Section Widget
  Widget _buildNinetyFive() {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 150.h,
              padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 10.v),
              decoration: AppDecoration.fillBlueGray,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse3,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    radius: BorderRadius.circular(10.h),
                    margin: EdgeInsets.only(left: 4.h, top: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, top: 1.v),
                    child: Text("lbl_robert".tr,
                        style: CustomTextStyles.titleSmallMedium)),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgIconsaxLinearClosesquare,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(top: 1.v))
              ])),
          Container(
              width: 150.h,
              margin: EdgeInsets.only(left: 9.h),
              padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 10.v),
              decoration: AppDecoration.fillBlueGray,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse5,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    radius: BorderRadius.circular(10.h),
                    margin: EdgeInsets.only(left: 4.h, top: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, top: 3.v),
                    child: Text("lbl_sophia".tr,
                        style: CustomTextStyles.titleSmallMedium)),
                Spacer(),
                Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: CustomIconButton(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        padding: EdgeInsets.all(1.h),
                        child: CustomImageView(
                            imagePath: ImageConstant
                                .imgIconsaxLinearAddsquareOnprimarycontainer)))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: CustomIconButton(
                  height: 41.adaptSize,
                  width: 41.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                      imagePath:
                          ImageConstant.imgIconsaxLinearAddsquareOnprimary)))
        ]));
  }

  /// Section Widget
  Widget _buildAM() {
    return CustomElevatedButton(
        height: 41.v,
        width: 135.h,
        text: "lbl_10_30_am".tr,
        buttonStyle: CustomButtonStyles.fillBlueGray1,
        buttonTextStyle: theme.textTheme.titleMedium!);
  }

  /// Section Widget
  Widget _buildFifteenMillionOneHundredTwelveThousandTwentyTwo() {
    return CustomElevatedButton(
        height: 41.v,
        width: 135.h,
        text: "lbl_15_11_2022".tr,
        buttonStyle: CustomButtonStyles.fillBlueGray1,
        buttonTextStyle: theme.textTheme.titleMedium!);
  }

  /// Section Widget
  Widget _buildAM1() {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 176.h,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomIconButton(
                    height: 41.adaptSize,
                    width: 41.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgIconsaxLinearClock)),
                _buildAM()
              ])),
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: CustomIconButton(
                  height: 41.adaptSize,
                  width: 41.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconsaxLinearCalendar))),
          _buildFifteenMillionOneHundredTwelveThousandTwentyTwo()
        ]));
  }

  /// Section Widget
  Widget _buildCreate() {
    return CustomElevatedButton(
        text: "lbl_create".tr,
        margin: EdgeInsets.symmetric(horizontal: 6.h),
        onPressed: () {
          onTapCreate();
        });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the taskDetailsScreen when the action is triggered.
  onTapCreate() {
    Get.toNamed(
      AppRoutes.taskDetailsScreen,
    );
  }
}
