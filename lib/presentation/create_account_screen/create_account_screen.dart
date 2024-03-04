import 'package:tasks/widgets/custom_text_form_field.dart';
import 'package:tasks/core/utils/validation_functions.dart';
import 'package:tasks/widgets/custom_elevated_button.dart';
import 'package:tasks/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/create_account_controller.dart';

// ignore_for_file: must_be_immutable
class CreateAccountScreen extends GetWidget<CreateAccountController> {
  CreateAccountScreen({Key? key}) : super(key: key);

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
                                horizontal: 26.h, vertical: 18.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 19.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGlobe,
                                      height: 71.v,
                                      width: 91.h,
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.center,
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "lbl_day".tr,
                                                style: CustomTextStyles
                                                    .headlineSmallffffffff),
                                            TextSpan(
                                                text: "lbl_task".tr,
                                                style: CustomTextStyles
                                                    .headlineSmallfffed36a)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  SizedBox(height: 35.v),
                                  Text("msg_create_your_account".tr,
                                      style: theme.textTheme.headlineMedium),
                                  SizedBox(height: 11.v),
                                  Text("lbl_full_name".tr,
                                      style: CustomTextStyles
                                          .bodyLargeBluegray300),
                                  SizedBox(height: 14.v),
                                  _buildFullName(),
                                  SizedBox(height: 25.v),
                                  Text("lbl_email_address".tr,
                                      style: CustomTextStyles
                                          .bodyLargeBluegray300),
                                  SizedBox(height: 14.v),
                                  _buildEmail(),
                                  SizedBox(height: 25.v),
                                  Text("lbl_password".tr,
                                      style: CustomTextStyles
                                          .bodyLargeBluegray300),
                                  SizedBox(height: 14.v),
                                  _buildPassword(),
                                  SizedBox(height: 17.v),
                                  _buildDescription(),
                                  SizedBox(height: 30.v),
                                  _buildSignUp(),
                                  SizedBox(height: 32.v),
                                  _buildLineTwo(),
                                  SizedBox(height: 36.v),
                                  _buildGoogle(),
                                  SizedBox(height: 25.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapTxtAlreadyhavean();
                                          },
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_already_have_an2"
                                                        .tr,
                                                    style: CustomTextStyles
                                                        .titleMediumff8caab8),
                                                TextSpan(
                                                    text: "lbl_log_in".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumfffed36a)
                                              ]),
                                              textAlign: TextAlign.left)))
                                ])))))));
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
        controller: controller.fullNameController,
        hintText: "lbl_fazil_laghari".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 17.v, 26.h, 17.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxBrokenUser,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 58.v),
        contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v));
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "msg_fazzzil72_gmail_com".tr,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 17.v, 26.h, 17.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxBrokenUsertag,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 58.v),
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 17.v, 30.h, 17.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxBrokenLock1,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 58.v),
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 17.v, 18.h, 17.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconsaxBrokenEyeslash,
                    height: 24.adaptSize,
                    width: 24.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 58.v),
        obscureText: controller.isShowPassword.value));
  }

  /// Section Widget
  Widget _buildDescription() {
    return Padding(
        padding: EdgeInsets.only(right: 29.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIconsaxBrokenTicksquare,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 16.v)),
          Expanded(
              child: Container(
                  width: 312.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_i_have_read_agreed2".tr,
                            style: CustomTextStyles.bodyMediumff8caab8),
                        TextSpan(
                            text: "msg_privacy_policy_terms".tr,
                            style: CustomTextStyles.bodyMediumfffed36a
                                .copyWith(height: 1.35))
                      ]),
                      textAlign: TextAlign.left)))
        ]));
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        onPressed: () {
          onTapSignUp();
        });
  }

  /// Section Widget
  Widget _buildLineTwo() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 8.v),
              child: SizedBox(width: 111.h, child: Divider())),
          Text("msg_or_continue_with".tr,
              style: CustomTextStyles.titleMediumBluegray300),
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 8.v),
              child: SizedBox(width: 111.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildGoogle() {
    return CustomOutlinedButton(
        text: "lbl_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxBrokenGoogle,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          google();
        });
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSignUp() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  google() async {
    var url =
        'https://accounts.google.com/o/oauth2/auth/oauthchooseaccount?login_hint&response_type=code&redirect_uri=https%3A%2F%2Fauth0.openai.com%2Flogin%2Fcallback&scope=email%20profile&state=cyfi1NvjEv-0Y9eaD91chcPumfC0BOAL&client_id=799222349882-ne3i0s9jdm5s0p7ll2d7tlsi1vc1halt.apps.googleusercontent.com&service=lso&o2v=1&theme=glif&flowName=GeneralOAuthFlow';
    if (!await launchUrlString(url)) {
      throw 'Could not launch https://accounts.google.com/o/oauth2/auth/oauthchooseaccount?login_hint&response_type=code&redirect_uri=https%3A%2F%2Fauth0.openai.com%2Flogin%2Fcallback&scope=email%20profile&state=cyfi1NvjEv-0Y9eaD91chcPumfC0BOAL&client_id=799222349882-ne3i0s9jdm5s0p7ll2d7tlsi1vc1halt.apps.googleusercontent.com&service=lso&o2v=1&theme=glif&flowName=GeneralOAuthFlow';
    }
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
