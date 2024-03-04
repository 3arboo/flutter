import '../../../core/app_export.dart';
import '../models/profile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  TextEditingController iconsaxLinearuseraddController =
      TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  Rx<bool> isShowPassword = true.obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  @override
  void onClose() {
    super.onClose();
    iconsaxLinearuseraddController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in profileModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in profileModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element in profileModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileModelObj.value.dropdownItemList2.refresh();
  }
}
