import '../../../core/app_export.dart';
import '../models/new_message_model.dart';

/// A controller class for the NewMessageScreen.
///
/// This class manages the state of the NewMessageScreen, including the
/// current newMessageModelObj
class NewMessageController extends GetxController {
  Rx<NewMessageModel> newMessageModelObj = NewMessageModel().obs;
}
