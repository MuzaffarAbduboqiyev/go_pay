import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_pay/utils/service/log_service/log_service.dart';

@pragma('vm:entry-point')
class NotificationActionHandler {
  static BuildContext? _context;

  static void setContext(BuildContext context) =>
      NotificationActionHandler._context = context;

  @pragma('vm:entry-point')
  static void notificationTapHandler(NotificationResponse response) async {
    showToast("Notification tapped");
  }
}
