import 'package:tasks/presentation/messages_page/messages_page.dart';
import 'package:tasks/presentation/schedule_page/schedule_page.dart';
import 'package:tasks/presentation/notification_page/notification_page.dart';
import 'package:tasks/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'controller/messages_container_controller.dart';

class MessagesContainerScreen extends GetWidget<MessagesContainerController> {
  const MessagesContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.messagesPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Chat:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Calendar:
        return AppRoutes.schedulePage;
      case BottomBarEnum.Notification:
        return AppRoutes.notificationPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.messagesPage:
        return MessagesPage();
      case AppRoutes.schedulePage:
        return SchedulePage();
      case AppRoutes.notificationPage:
        return NotificationPage();
      default:
        return DefaultWidget();
    }
  }
}
