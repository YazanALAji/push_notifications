// Import the necessary packages
// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, unused_import, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  late Uri theLink;

  @override
  Widget build(BuildContext context) {
    // get message and display it on screen
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;
    theLink = Uri.parse(message.data['click_action']);

    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
        ),
        body: Center(
          child: Card(
            margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      message.notification!.title.toString(),
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      message.notification!.body.toString(),
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    InkWell(
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            ':D اضغطني',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          )),
                      onTap: () => launchUrl(theLink),
                    ),
                  ]),
            ),
          ),
        )
        // Column(
        //   children: [
        //     Text(message.notification!.title.toString()),
        //     Text(message.notification!.body.toString()),
        //     Text(message.data.toString()),
        //   ],
        // ),
        );
  }
}
