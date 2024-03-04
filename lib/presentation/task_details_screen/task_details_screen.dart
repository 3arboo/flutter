import 'package:tasks/widgets/app_bar/custom_app_bar.dart';
import 'package:tasks/widgets/app_bar/appbar_leading_image.dart';
import 'package:tasks/widgets/app_bar/appbar_title.dart';
import 'package:tasks/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tasks/widgets/custom_icon_button.dart';
import 'package:tasks/widgets/custom_text_form_field.dart';
import 'package:tasks/widgets/custom_elevated_button.dart';
import 'package:tasks/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/task_details_controller.dart';

class TaskDetailsScreen extends GetWidget<TaskDetailsController> {
  const TaskDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 46.v),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("msg_real_estate_app".tr,
                              style: CustomTextStyles.titleLargePilatExtended)),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h, right: 59.h),
                          child: Row(children: [
                            CustomIconButton(
                                height: 47.adaptSize,
                                width: 47.adaptSize,
                                padding: EdgeInsets.all(11.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant
                                        .imgIconsaxBrokenCalendarremove)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 14.h, top: 7.v, bottom: 2.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_due_date".tr,
                                          style: CustomTextStyles
                                              .labelMediumBluegray300),
                                      SizedBox(height: 2.v),
                                      Text("lbl_20_june".tr,
                                          style: CustomTextStyles
                                              .titleMediumSemiBold)
                                    ])),
                            Spacer(),
                            SizedBox(
                                width: 132.h,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomIconButton(
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          padding: EdgeInsets.all(11.h),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgIconsaxBrokenProfile2user)),
                                      Padding(
                                          padding: EdgeInsets.only(top: 5.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_project_team".tr,
                                                    style: CustomTextStyles
                                                        .labelMediumBluegray300),
                                                SizedBox(height: 5.v),
                                                SizedBox(
                                                    height: 20.v,
                                                    width: 46.h,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse3,
                                                              height:
                                                                  20.adaptSize,
                                                              width:
                                                                  20.adaptSize,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.h),
                                                              alignment: Alignment
                                                                  .centerLeft),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse4,
                                                              height:
                                                                  20.adaptSize,
                                                              width:
                                                                  20.adaptSize,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.h),
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse5,
                                                              height:
                                                                  20.adaptSize,
                                                              width:
                                                                  20.adaptSize,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.h),
                                                              alignment: Alignment
                                                                  .centerRight)
                                                        ]))
                                              ]))
                                    ]))
                          ])),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("lbl_project_details".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 9.v),
                      Container(
                          width: 350.h,
                          margin: EdgeInsets.only(left: 29.h, right: 48.h),
                          child: Text("msg_lorem_ipsum_is_simply".tr,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallTeal100
                                  .copyWith(height: 1.54))),
                      SizedBox(height: 16.v),
                      _buildProjectProgress(),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("lbl_all_tasks".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 22.v),
                      _buildIconsaxLineartickcircle(),
                      SizedBox(height: 12.v),
                      _buildIconsaxLineartickcircle1(),
                      SizedBox(height: 12.v),
                      _buildIconsaxLineartickcircle2(),
                      SizedBox(height: 12.v),
                      _buildIconsaxLineartickcircle3(),
                      SizedBox(height: 12.v),
                      _buildAddTask1()
                    ])),
            floatingActionButton: _buildFloatingActionButton()));
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
        title: AppbarTitle(text: "lbl_task_details".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconsaxBrokenEdit,
              margin: EdgeInsets.fromLTRB(40.h, 15.v, 40.h, 16.v),
              onTap: () {
                onTapIconsaxBrokenEdit();
              })
        ]);
  }

  /// Section Widget
  Widget _buildProjectProgress() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 19.v, bottom: 17.v),
                      child: Text("msg_project_progress".tr,
                          style: theme.textTheme.titleMedium)),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: theme.colorScheme.primaryContainer,
                              width: 2.h),
                          borderRadius: BorderRadiusStyle.roundedBorder29),
                      child: Container(
                          height: 59.adaptSize,
                          width: 59.adaptSize,
                          decoration: AppDecoration.outlinePrimaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder29),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: 59.adaptSize,
                                    width: 59.adaptSize,
                                    child: CircularProgressIndicator(
                                        value: 0.5, strokeWidth: 2.h))),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_60".tr,
                                    style: theme.textTheme.labelMedium))
                          ])))
                ])));
  }

  /// Section Widget
  Widget _buildIconsaxLineartickcircle() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 29.h),
        child: CustomTextFormField(
            controller: controller.iconsaxLineartickcircleController,
            hintText: "lbl_user_interviews".tr,
            hintStyle: theme.textTheme.titleMedium!,
            alignment: Alignment.center,
            suffix: Container(
                padding: EdgeInsets.all(8.h),
                margin: EdgeInsets.fromLTRB(30.h, 9.v, 10.h, 9.v),
                decoration: BoxDecoration(color: theme.colorScheme.primary),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconsaxLinearTickcircle,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 58.v),
            contentPadding:
                EdgeInsets.only(left: 19.h, top: 18.v, bottom: 18.v)));
  }

  /// Section Widget
  Widget _buildIconsaxLineartickcircle1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 29.h),
        child: CustomTextFormField(
            controller: controller.iconsaxLineartickcircleController1,
            hintText: "lbl_wireframes".tr,
            hintStyle: theme.textTheme.titleMedium!,
            alignment: Alignment.center,
            suffix: Container(
                padding: EdgeInsets.all(8.h),
                margin: EdgeInsets.fromLTRB(30.h, 9.v, 10.h, 9.v),
                decoration: BoxDecoration(color: theme.colorScheme.primary),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconsaxLinearTickcircle,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 58.v),
            contentPadding:
                EdgeInsets.only(left: 19.h, top: 18.v, bottom: 18.v)));
  }

  /// Section Widget
  Widget _buildIconsaxLineartickcircle2() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 29.h),
        child: CustomTextFormField(
            controller: controller.iconsaxLineartickcircleController2,
            hintText: "lbl_design_system".tr,
            hintStyle: theme.textTheme.titleMedium!,
            alignment: Alignment.center,
            suffix: Container(
                padding: EdgeInsets.all(8.h),
                margin: EdgeInsets.fromLTRB(30.h, 9.v, 10.h, 9.v),
                decoration: BoxDecoration(color: theme.colorScheme.primary),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconsaxLinearTickcircle,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 58.v),
            contentPadding:
                EdgeInsets.only(left: 19.h, top: 18.v, bottom: 18.v)));
  }

  /// Section Widget
  Widget _buildIconsaxLineartickcircle3() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 29.h),
        child: CustomTextFormField(
            controller: controller.iconsaxLineartickcircleController3,
            hintText: "lbl_icons".tr,
            hintStyle: theme.textTheme.titleMedium!,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center,
            suffix: Container(
                padding: EdgeInsets.all(8.h),
                margin: EdgeInsets.fromLTRB(30.h, 9.v, 10.h, 9.v),
                decoration: BoxDecoration(color: theme.colorScheme.primary),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconsaxLinearTickcircleBlack900,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 58.v),
            contentPadding:
                EdgeInsets.only(left: 19.h, top: 18.v, bottom: 18.v)));
  }

  /// Section Widget
  Widget _buildAddTask() {
    return CustomElevatedButton(
        height: 57.v,
        text: "lbl_add_task".tr,
        onPressed: () {
          onTapAddTask();
        });
  }

  /// Section Widget
  Widget _buildAddTask1() {
    return SizedBox(
        height: 149.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin:
                      EdgeInsets.only(left: 29.h, right: 29.h, bottom: 91.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v),
                  decoration: AppDecoration.fillBlueGray,
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text("lbl_final_mockups".tr,
                            style: theme.textTheme.titleMedium))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 55.h, vertical: 26.v),
                  decoration: AppDecoration.fillBluegray900,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [SizedBox(height: 5.v), _buildAddTask()])))
        ]));
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 40,
        width: 40,
        backgroundColor: theme.colorScheme.primary,
        child: CustomImageView(
            imagePath: ImageConstant.imgIconsaxLinearTickcircleBlack900,
            height: 20.0.v,
            width: 20.0.h));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the createNewTaskScreen when the action is triggered.
  onTapIconsaxBrokenEdit() {
    Get.toNamed(
      AppRoutes.createNewTaskScreen,
    );
  }

  /// Navigates to the createNewTaskScreen when the action is triggered.
  onTapAddTask() {
    Get.toNamed(
      AppRoutes.createNewTaskScreen,
    );
  }
}
