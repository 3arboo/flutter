import '../../../core/app_export.dart';
import '../models/create_new_task_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CreateNewTaskScreen.
///
/// This class manages the state of the CreateNewTaskScreen, including the
/// current createNewTaskModelObj
class CreateNewTaskController extends GetxController {
  TextEditingController hiFiWireframeController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  Rx<CreateNewTaskModel> createNewTaskModelObj = CreateNewTaskModel().obs;

  @override
  void onClose() {
    super.onClose();
    hiFiWireframeController.dispose();
    descriptionController.dispose();
  }
}
