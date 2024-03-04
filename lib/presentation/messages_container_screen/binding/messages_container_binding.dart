import 'package:tasks/presentation/messages_container_screen/controller/messages_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessagesContainerScreen.
///
/// This class ensures that the MessagesContainerController is created when the
/// MessagesContainerScreen is first loaded.
class MessagesContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessagesContainerController());
  }
}
