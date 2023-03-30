import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  static const routeName = '/inbox';

  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
      ),
      body: const Center(
        child: Text(
          'This is your Inbox',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
