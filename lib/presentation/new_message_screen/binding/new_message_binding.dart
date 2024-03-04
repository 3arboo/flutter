import 'package:tasks/presentation/new_message_screen/controller/new_message_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NewMessageScreen.
///
/// This class ensures that the NewMessageController is created when the
/// NewMessageScreen is first loaded.
class NewMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewMessageController());
  }
}
