import '../models/messages_item_model.dart';
import '../controller/messages_controller.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';

// ignore: must_be_immutable
class MessagesItemWidget extends StatelessWidget {
  MessagesItemWidget(
    this.messagesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessagesItemModel messagesItemModelObj;

  var controller = Get.find<MessagesController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: messagesItemModelObj.oliviaAnna!.value,
            height: 47.adaptSize,
            width: 47.adaptSize,
            radius: BorderRadius.circular(
              23.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 5.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  messagesItemModelObj.oliviaAnna1!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  messagesItemModelObj.hiPleaseCheck!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 29.h,
            top: 15.v,
            bottom: 11.v,
          ),
          child: Column(
            children: [
              Obx(
                () => Text(
                  messagesItemModelObj.time!.value,
                  style: theme.textTheme.labelSmall,
                ),
              ),
              SizedBox(height: 4.v),
              Container(
                height: 6.adaptSize,
                width: 6.adaptSize,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
