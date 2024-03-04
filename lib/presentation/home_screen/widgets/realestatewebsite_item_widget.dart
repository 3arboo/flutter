import '../models/realestatewebsite_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';

// ignore: must_be_immutable
class RealestatewebsiteItemWidget extends StatelessWidget {
  RealestatewebsiteItemWidget(
    this.realestatewebsiteItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RealestatewebsiteItemModel realestatewebsiteItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 183.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(
                width: 158.h,
                child: Obx(
                  () => Text(
                    realestatewebsiteItemModelObj.realEstateWebsite!.value,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleLargePilatExtendedBlack900
                        .copyWith(
                      height: 1.21,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 2.v,
                    ),
                    child: Obx(
                      () => Text(
                        realestatewebsiteItemModelObj.teamMembers!.value,
                        style: CustomTextStyles.bodySmallOnPrimary11,
                      ),
                    ),
                  ),
                  Container(
                    height: 20.v,
                    width: 72.h,
                    margin: EdgeInsets.only(left: 12.h),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse1,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse2,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 13.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse4,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 13.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse5,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => Text(
                      realestatewebsiteItemModelObj.completed!.value,
                      style: CustomTextStyles.bodySmallOnPrimary11,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 83.h),
                    child: Obx(
                      () => Text(
                        realestatewebsiteItemModelObj.oneHundred!.value,
                        style: CustomTextStyles.labelSmallBlack900,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.v),
              Container(
                height: 6.v,
                width: 163.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                  child: LinearProgressIndicator(
                    value: 1.0,
                    backgroundColor: theme.colorScheme.onPrimary,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      appTheme.amber100,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.v),
            ],
          ),
        ),
      ),
    );
  }
}
