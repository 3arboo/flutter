import '../../../core/app_export.dart';
import '../models/messages_container_model.dart';

/// A controller class for the MessagesContainerScreen.
///
/// This class manages the state of the MessagesContainerScreen, including the
/// current messagesContainerModelObj
class MessagesContainerController extends GetxController {
  Rx<MessagesContainerModel> messagesContainerModelObj =
      MessagesContainerModel().obs;
}
