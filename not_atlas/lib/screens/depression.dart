import 'package:flutter/material.dart';

class DepressionScreen extends StatelessWidget {
static const String routeName = '/depression';

  const DepressionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Depression'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.yellow,
              child: const Text(
                'If you are struggling with depression, please know that you are not alone. Our group is here to provide a listening ear, support, and hope for a bright future. Together, we can work towards breaking down the stigmas and barriers.',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Depression',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.add),
      ),
    );
  }
}
