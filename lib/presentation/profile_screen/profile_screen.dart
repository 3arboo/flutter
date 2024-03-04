import 'package:tasks/widgets/custom_icon_button.dart';
import 'package:tasks/widgets/custom_text_form_field.dart';
import 'package:tasks/core/utils/validation_functions.dart';
import 'package:tasks/widgets/custom_drop_down.dart';
import 'package:tasks/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/profile_controller.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 32.h, vertical: 37.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArrowLeft,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.only(top: 1.v),
                                            onTap: () {
                                              onTapImgArrowLeft();
                                            }),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 120.h),
                                            child: Text("lbl_profile".tr,
                                                style:
                                                    theme.textTheme.titleLarge))
                                      ]))),
                              SizedBox(height: 50.v),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: theme.colorScheme.primary,
                                          width: 2.h),
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder66),
                                  child: Container(
                                      height: 133.adaptSize,
                                      width: 133.adaptSize,
                                      padding: EdgeInsets.all(3.h),
                                      decoration: AppDecoration.outlinePrimary
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder66),
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEllipse36127x127,
                                                height: 127.adaptSize,
                                                width: 127.adaptSize,
                                                radius:
                                                    BorderRadius.circular(63.h),
                                                alignment: Alignment.center),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(right: 1.h),
                                                child: CustomIconButton(
                                                    height: 33.adaptSize,
                                                    width: 33.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(6.h),
                                                    decoration:
                                                        IconButtonStyleHelper
                                                            .fillOnPrimary,
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgIconsaxLinearClosesquare)))
                                          ]))),
                              SizedBox(height: 52.v),
                              _buildIconsaxLinearuseradd(),
                              SizedBox(height: 26.v),
                              _buildEmail(),
                              SizedBox(height: 26.v),
                              _buildPassword(),
                              SizedBox(height: 26.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 15.v, 14.h, 15.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIconsaxLinearArrowdown2,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  hintText: "lbl_my_tasks".tr,
                                  items: controller.profileModelObj.value
                                      .dropdownItemList!.value,
                                  prefix: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 14.h, vertical: 15.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIconsaxLinearTask,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 54.v),
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  }),
                              SizedBox(height: 26.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 15.v, 14.h, 15.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIconsaxLinearArrowdown2,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  hintText: "lbl_privacy".tr,
                                  items: controller.profileModelObj.value
                                      .dropdownItemList1!.value,
                                  prefix: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 14.h, vertical: 15.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIconsaxLinearSecuritycard,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 54.v),
                                  onChanged: (value) {
                                    controller.onSelected1(value);
                                  }),
                              SizedBox(height: 26.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 15.v, 14.h, 15.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIconsaxLinearArrowdown2,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  hintText: "lbl_setting".tr,
                                  items: controller.profileModelObj.value
                                      .dropdownItemList2!.value,
                                  prefix: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 14.h, vertical: 15.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIconsaxLinearSetting2,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 54.v),
                                  onChanged: (value) {
                                    controller.onSelected2(value);
                                  }),
                              SizedBox(height: 46.v),
                              _buildLogout(),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildIconsaxLinearuseradd() {
    return CustomTextFormField(
        controller: controller.iconsaxLinearuseraddController,
        hintText: "lbl_fazil_laghari".tr,
        prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearUseradd,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 54.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 54.v));
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "msg_fazzzil72_gmail_com".tr,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 54.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 54.v),
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 54.v),
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 15.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconsaxLinearEdit,
                    height: 24.adaptSize,
                    width: 24.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 54.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value));
  }

  /// Section Widget
  Widget _buildLogout() {
    return CustomElevatedButton(
        height: 54.v,
        text: "lbl_logout".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearLogoutcurve,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
        onPressed: () {
          onTapLogout();
        });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapLogout() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
