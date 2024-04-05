// ignore_for_file: unused_import, prefer_const_constructors

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:push_notification/pages/notification_page.dart';

class RealNotificationPage extends StatefulWidget {
  const RealNotificationPage({super.key});

  @override
  State<RealNotificationPage> createState() => _RealNotificationPageState();
}

class _RealNotificationPageState extends State<RealNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
        ),
        body: Column());
  }
}
