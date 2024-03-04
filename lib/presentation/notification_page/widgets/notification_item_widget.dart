import '../models/notification_item_model.dart';
import '../controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(
    this.notificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationItemModel notificationItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: notificationItemModelObj.circleImage!.value,
            height: 47.adaptSize,
            width: 47.adaptSize,
            radius: BorderRadius.circular(
              23.h,
            ),
          ),
        ),
        Container(
          width: 251.h,
          margin: EdgeInsets.only(
            left: 17.h,
            top: 5.v,
            bottom: 2.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_robert_brown2".tr,
                  style: CustomTextStyles.titleSmallffffffff,
                ),
                TextSpan(
                  text: "lbl_marked_the_task".tr,
                  style: CustomTextStyles.bodyMediumff8caab8,
                ),
                TextSpan(
                  text: "msg_mobile_app_design2".tr,
                  style: CustomTextStyles.bodyMediumfffed36a.copyWith(
                    height: 1.39,
                  ),
                ),
                TextSpan(
                  text: "lbl_as_in_process".tr,
                  style: CustomTextStyles.bodyMediumff8caab8,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 28.h,
            top: 19.v,
            bottom: 17.v,
          ),
          child: Obx(
            () => Text(
              notificationItemModelObj.duration!.value,
              style: theme.textTheme.labelSmall,
            ),
          ),
        ),
      ],
    );
  }
}
