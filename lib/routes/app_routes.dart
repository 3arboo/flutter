import 'package:get/get.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/sign_in_screen/binding/sign_in_binding.dart';
import '../presentation/create_account_screen/create_account_screen.dart';
import '../presentation/create_account_screen/binding/create_account_binding.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/home_screen/binding/home_binding.dart';
import '../presentation/task_details_screen/task_details_screen.dart';
import '../presentation/task_details_screen/binding/task_details_binding.dart';
import '../presentation/messages_container_screen/messages_container_screen.dart';
import '../presentation/messages_container_screen/binding/messages_container_binding.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/chat_screen/binding/chat_binding.dart';
import '../presentation/message_groups_screen/message_groups_screen.dart';
import '../presentation/message_groups_screen/binding/message_groups_binding.dart';
import '../presentation/new_message_screen/new_message_screen.dart';
import '../presentation/new_message_screen/binding/new_message_binding.dart';
import '../presentation/create_new_task_screen/create_new_task_screen.dart';
import '../presentation/create_new_task_screen/binding/create_new_task_binding.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/profile_screen/binding/profile_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String homeScreen = '/home_screen';

  static const String taskDetailsScreen = '/task_details_screen';

  static const String messagesPage = '/messages_page';

  static const String messagesContainerScreen = '/messages_container_screen';

  static const String chatScreen = '/chat_screen';

  static const String messageGroupsScreen = '/message_groups_screen';

  static const String newMessageScreen = '/new_message_screen';

  static const String schedulePage = '/schedule_page';

  static const String createNewTaskScreen = '/create_new_task_screen';

  static const String notificationPage = '/notification_page';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: createAccountScreen,
      page: () => CreateAccountScreen(),
      bindings: [
        CreateAccountBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: taskDetailsScreen,
      page: () => TaskDetailsScreen(),
      bindings: [
        TaskDetailsBinding(),
      ],
    ),
    GetPage(
      name: messagesContainerScreen,
      page: () => MessagesContainerScreen(),
      bindings: [
        MessagesContainerBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: messageGroupsScreen,
      page: () => MessageGroupsScreen(),
      bindings: [
        MessageGroupsBinding(),
      ],
    ),
    GetPage(
      name: newMessageScreen,
      page: () => NewMessageScreen(),
      bindings: [
        NewMessageBinding(),
      ],
    ),
    GetPage(
      name: createNewTaskScreen,
      page: () => CreateNewTaskScreen(),
      bindings: [
        CreateNewTaskBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
