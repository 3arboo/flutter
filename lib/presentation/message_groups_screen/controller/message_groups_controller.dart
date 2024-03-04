import '../../../core/app_export.dart';
import '../models/message_groups_model.dart';

/// A controller class for the MessageGroupsScreen.
///
/// This class manages the state of the MessageGroupsScreen, including the
/// current messageGroupsModelObj
class MessageGroupsController extends GetxController {
  Rx<MessageGroupsModel> messageGroupsModelObj = MessageGroupsModel().obs;
}
