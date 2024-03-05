import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:go_pay/controller/notification_controller/notification_repository.dart';
import 'package:go_pay/firebase_options.dart';
import 'package:go_pay/utils/service/log_service/log_service.dart';
import 'package:go_pay/utils/service/notification_service/notification_show.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';

Future<void> initFirebase() async {
  try{
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    FirebaseAnalytics.instance;
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen(foregroundHandleMessage);
    FirebaseMessaging.onBackgroundMessage(backgroundHandleMessage);

    RemoteMessage? initialMessage =
    await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      foregroundHandleMessage(initialMessage);
    }

    FirebaseMessaging.onMessageOpenedApp.listen(foregroundHandleMessage);

    FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) async {
      showLogWithTag("FCM_TOKEN_REFRESH", fcmToken);
      await getIt<NotificationRepository>().updateFcmToken(token: fcmToken);
    }).onError((err) {
      showLogWithTag("FCM_TOKEN_ERROR", err);
    });

    final fcmToken = await FirebaseMessaging.instance.getToken();

    if (fcmToken != null) {
      await getIt<NotificationRepository>().updateFcmToken(token: fcmToken);
    }

    showLogWithTag("FCM_TOKEN", fcmToken);
  }catch(_){}
}

void foregroundHandleMessage(RemoteMessage message) async {
  await showNotification(
    title: message.notification?.title,
    description: message.notification?.body,
  );
}

@pragma('vm:entry-point')
Future<void> backgroundHandleMessage(RemoteMessage message) async {
  await showNotification(
    title: message.notification?.title,
    description: message.notification?.body,
  );
}
