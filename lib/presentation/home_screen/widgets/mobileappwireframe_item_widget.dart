import '../models/mobileappwireframe_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';

// ignore: must_be_immutable
class MobileappwireframeItemWidget extends StatelessWidget {
  MobileappwireframeItemWidget(
    this.mobileappwireframeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MobileappwireframeItemModel mobileappwireframeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 5.h,
          vertical: 1.v,
        ),
        decoration: AppDecoration.fillBlueGray,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Obx(
                () => Text(
                  mobileappwireframeItemModelObj.mobileAppWireframe!.value,
                  style: CustomTextStyles.titleLargePilatExtended,
                ),
              ),
            ),
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 9.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            mobileappwireframeItemModelObj.teamMembers!.value,
                            style:
                                CustomTextStyles.bodyMediumOnPrimaryContainer,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        SizedBox(
                          height: 20.v,
                          width: 46.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Obx(
                                () => CustomImageView(
                                  imagePath: mobileappwireframeItemModelObj
                                      .circleImage!.value,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  radius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                              Obx(
                                () => CustomImageView(
                                  imagePath: mobileappwireframeItemModelObj
                                      .circleImage1!.value,
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
                                  imagePath: mobileappwireframeItemModelObj
                                      .circleImage2!.value,
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
                        SizedBox(height: 12.v),
                        Obx(
                          () => Text(
                            mobileappwireframeItemModelObj.month!.value,
                            style:
                                CustomTextStyles.bodyMediumOnPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 59.adaptSize,
                            width: 59.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                29.h,
                              ),
                              border: Border.all(
                                color: theme.colorScheme.primaryContainer,
                                width: 2.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                40.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Obx(
                            () => Text(
                              mobileappwireframeItemModelObj.seventyFive!.value,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ),
                      ],
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
