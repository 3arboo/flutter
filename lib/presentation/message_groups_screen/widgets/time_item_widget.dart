import '../models/time_item_model.dart';
import '../controller/message_groups_controller.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';

// ignore: must_be_immutable
class TimeItemWidget extends StatelessWidget {
  TimeItemWidget(
    this.timeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TimeItemModel timeItemModelObj;

  var controller = Get.find<MessageGroupsController>();

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        extentRatio: 0.4,
        dragDismissible: false,
        children: [
          Container(
            margin: EdgeInsets.only(left: 45.h),
            padding: EdgeInsets.symmetric(vertical: 17.v),
            child: Obx(
              () => Text(
                timeItemModelObj.time!.value,
                style: theme.textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: timeItemModelObj.circleImage!.value,
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
              top: 6.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    timeItemModelObj.androidDeveloper!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    timeItemModelObj.robertDidYou!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              bottom: 17.v,
            ),
            child: Obx(
              () => Text(
                timeItemModelObj.time1!.value,
                style: theme.textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
