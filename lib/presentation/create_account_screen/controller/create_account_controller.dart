import '../../../core/app_export.dart';
import '../models/create_account_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CreateAccountScreen.
///
/// This class manages the state of the CreateAccountScreen, including the
/// current createAccountModelObj
class CreateAccountController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<CreateAccountModel> createAccountModelObj = CreateAccountModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
