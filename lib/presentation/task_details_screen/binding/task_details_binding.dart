import 'package:tasks/presentation/task_details_screen/controller/task_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TaskDetailsScreen.
///
/// This class ensures that the TaskDetailsController is created when the
/// TaskDetailsScreen is first loaded.
class TaskDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TaskDetailsController());
  }
}
