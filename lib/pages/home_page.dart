// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[300],
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.school,
              size: 48,
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
                leading: Icon(Icons.notifications),
                title: Text('N O T I F I C A T I O N S'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/notification_window');
                }),
          ],
        ),
      ),
    );
  }
}
