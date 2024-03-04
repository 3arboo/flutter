import 'package:tasks/presentation/create_new_task_screen/controller/create_new_task_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateNewTaskScreen.
///
/// This class ensures that the CreateNewTaskController is created when the
/// CreateNewTaskScreen is first loaded.
class CreateNewTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewTaskController());
  }
}
