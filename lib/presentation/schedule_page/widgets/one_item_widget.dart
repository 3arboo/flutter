import '../models/one_item_model.dart';
import '../controller/schedule_controller.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';

// ignore: must_be_immutable
class OneItemWidget extends StatelessWidget {
  OneItemWidget(
    this.oneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OneItemModel oneItemModelObj;

  var controller = Get.find<ScheduleController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 44.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.fillBluegray900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Obx(
                  () => Text(
                    oneItemModelObj.one!.value,
                    style: CustomTextStyles.titleMediumSemiBold_1,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  oneItemModelObj.mon!.value,
                  style: CustomTextStyles.labelSmallMedium,
                ),
              ),
              SizedBox(height: 2.v),
            ],
          ),
        ),
      ),
    );
  }
}
