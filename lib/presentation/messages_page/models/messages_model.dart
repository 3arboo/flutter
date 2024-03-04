import '../../../core/app_export.dart';
import 'messages_item_model.dart';

/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel {
  Rx<List<MessagesItemModel>> messagesItemList = Rx([
    MessagesItemModel(
        oliviaAnna: ImageConstant.imgEllipse36.obs,
        oliviaAnna1: "Olivia Anna".obs,
        hiPleaseCheck: "Hi, please check the last task, that I....".obs,
        time: "31 min".obs),
    MessagesItemModel(
        oliviaAnna: ImageConstant.imgEllipse3647x47.obs,
        oliviaAnna1: "Emna".obs,
        hiPleaseCheck: "Hi, please check the last task, that I....".obs,
        time: "43 min".obs),
    MessagesItemModel(
        oliviaAnna: ImageConstant.imgEllipse363.obs,
        oliviaAnna1: "Sophia".obs,
        hiPleaseCheck: "Hi, please check the last task, that I....".obs),
    MessagesItemModel(
        oliviaAnna: ImageConstant.imgEllipse364.obs,
        oliviaAnna1: "Isabella".obs,
        hiPleaseCheck: "Hi, please check the last task, that I....".obs)
  ]);
}
