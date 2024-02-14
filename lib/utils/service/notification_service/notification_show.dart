import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_pay/utils/service/log_service/log_service.dart';
import 'package:go_pay/utils/service/notification_service/notification_service.dart';

Future<void> showNotification({
  required String? title,
  required String? description,
}) async {
  try {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      "high_importance_channel",
      "High Importance Notifications",
      importance: Importance.high,
      priority: Priority.high,
      ticker: 'ticker',
    );

    const DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails(
      categoryIdentifier: "high_importance_channel",
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
      macOS: darwinNotificationDetails,
    );

    final flutterLocalNotificationsPlugin = await initNotification();

    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      description,
      notificationDetails,
    );
  } catch (e) {
    showToast(e.toString());
  }
}
