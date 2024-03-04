import '../../../core/app_export.dart';
import '../models/task_details_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TaskDetailsScreen.
///
/// This class manages the state of the TaskDetailsScreen, including the
/// current taskDetailsModelObj
class TaskDetailsController extends GetxController {
  TextEditingController iconsaxLineartickcircleController =
      TextEditingController();

  TextEditingController iconsaxLineartickcircleController1 =
      TextEditingController();

  TextEditingController iconsaxLineartickcircleController2 =
      TextEditingController();

  TextEditingController iconsaxLineartickcircleController3 =
      TextEditingController();

  Rx<TaskDetailsModel> taskDetailsModelObj = TaskDetailsModel().obs;

  @override
  void onClose() {
    super.onClose();
    iconsaxLineartickcircleController.dispose();
    iconsaxLineartickcircleController1.dispose();
    iconsaxLineartickcircleController2.dispose();
    iconsaxLineartickcircleController3.dispose();
  }
}
