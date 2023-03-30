import 'package:flutter/material.dart';

class BipolarScreen extends StatelessWidget {
static const String routeName = '/bipolar';

  const BipolarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bipolar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                'Find support for bipolar disorder in this group. Connect with others who understand what you\'re going through and share strategies for managing symptoms.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Bipolar Disorder',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 32.0,
        ),
      ),
    );
  }
}
