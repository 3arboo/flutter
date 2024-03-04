import '../models/userinterviews_item_model.dart';
import '../controller/schedule_controller.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';

// ignore: must_be_immutable
class UserinterviewsItemWidget extends StatelessWidget {
  UserinterviewsItemWidget(
    this.userinterviewsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserinterviewsItemModel userinterviewsItemModelObj;

  var controller = Get.find<ScheduleController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 21.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userinterviewsItemModelObj.userInterviews!.value,
                      style: CustomTextStyles.titleMediumOnPrimary,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Obx(
                    () => Text(
                      userinterviewsItemModelObj
                          .sixteenMillionOneThousandEight!.value,
                      style: CustomTextStyles.bodySmallOnPrimary,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20.v,
              width: 46.h,
              margin: EdgeInsets.symmetric(vertical: 13.v),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath:
                          userinterviewsItemModelObj.userInterviews1!.value,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath:
                          userinterviewsItemModelObj.userInterviews2!.value,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
