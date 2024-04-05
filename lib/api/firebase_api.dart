// ignore_for_file: unused_field, unused_element, avoid_print, unused_import

import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:push_notification/main.dart';
import 'package:url_launcher/url_launcher.dart';

class FirebaseApi {
  // create an instance of Firebase Messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

  // function to initialize notification
  Future<void> initNotification() async {
    // request permission from user
    await _firebaseMessaging.requestPermission();

    // initialize further settings for push notification
    initPushNotification();
  }

  // function to handle recevied messages
  void handleMessage(RemoteMessage? message) {
    // if the message is null, do nothing
    if (message == null) return;

    // navigate to a new screen when message is received and user taps notification
    navigatorKey.currentState?.pushNamed(
      '/notification_screen',
      arguments: message,
    );
  }

  // function to initialize foreground and background settings
  Future initPushNotification() async {
    // handle notification if the app was terminated and now opened
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    // attach event listners for when a notification opens the app
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
