import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
static const routeName = '/notification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: const Center(
        child: Text('No notifications yet.'),
      ),
    );
  }
}
