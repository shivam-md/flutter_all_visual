import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHandler {
  static final FlutterLocalNotificationsPlugin notificationPlugin = FlutterLocalNotificationsPlugin();

  static Future<void> setup() async {
    AndroidInitializationSettings androidSetting = const AndroidInitializationSettings("@mipmap/ic_launcher");
    DarwinInitializationSettings iOSSetting = const DarwinInitializationSettings();

    final initSetting = InitializationSettings(
      android: androidSetting,
      iOS: iOSSetting,
    );

    await notificationPlugin.initialize(initSetting);
  }

  static notificationDetails(){
    return const NotificationDetails(
      android: AndroidNotificationDetails('channel ID', 'Channel Name', channelDescription: 'channel Description', importance: Importance.max),
      iOS: DarwinNotificationDetails(),
    );
  }

  static Future showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
  }) async {
    notificationPlugin.show(id, title, body, await notificationDetails(), payload: payload);
  }

}