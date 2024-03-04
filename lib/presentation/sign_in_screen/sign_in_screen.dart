import 'package:tasks/core/utils/validation_functions.dart';
import 'package:tasks/widgets/custom_text_form_field.dart';
import 'package:tasks/widgets/custom_elevated_button.dart';
import 'package:tasks/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/sign_in_controller.dart';
import 'package:tasks/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

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
                                horizontal: 26.h, vertical: 37.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                  SizedBox(height: 32.v),
                                  Text("lbl_welcome_back".tr,
                                      style: theme.textTheme.headlineMedium),
                                  SizedBox(height: 13.v),
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
                                  SizedBox(height: 11.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Text("msg_forgot_password".tr,
                                          style: CustomTextStyles
                                              .titleMediumBluegray300)),
                                  SizedBox(height: 36.v),
                                  _buildLogIn(),
                                  SizedBox(height: 36.v),
                                  _buildLineTwo(),
                                  SizedBox(height: 36.v),
                                  _buildGoogle(),
                                  SizedBox(height: 25.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapTxtDonthaveanaccount();
                                          },
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "msg_don_t_have_an_account2"
                                                            .tr,
                                                    style: CustomTextStyles
                                                        .titleMediumff8caab8),
                                                TextSpan(
                                                    text: "lbl_sign_up".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumfffed36a)
                                              ]),
                                              textAlign: TextAlign.left))),
                                  SizedBox(height: 5.v)
                                ])))))));
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
  Widget _buildLogIn() {
    return CustomElevatedButton(
        text: "lbl_log_in".tr,
        onPressed: () {
          onTapLogIn();
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
          onTapGoogle();
        });
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapLogIn() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  onTapGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Navigates to the createAccountScreen when the action is triggered.
  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.createAccountScreen,
    );
  }
}
