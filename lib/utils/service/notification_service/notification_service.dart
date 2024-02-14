import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_pay/utils/service/notification_service/notification_action_handler.dart';

Future<FlutterLocalNotificationsPlugin> initNotification() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  final DarwinInitializationSettings initializationSettingsIOS =
      DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
  );

  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );

  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveBackgroundNotificationResponse:
        NotificationActionHandler.notificationTapHandler,
    onDidReceiveNotificationResponse:
        NotificationActionHandler.notificationTapHandler,
  );

  return flutterLocalNotificationsPlugin;
}
