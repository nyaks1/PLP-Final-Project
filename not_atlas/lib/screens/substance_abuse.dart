import 'package:flutter/material.dart';

class SubstanceAbuseScreen extends StatelessWidget {
  const SubstanceAbuseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.brown[300],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'We believe that everyone deserves support and care, regardless of their addiction history. Our group is here to provide a listening ear and compassionate support as you work towards a healthier, happier life.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Substance Abuse',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.brown[300],
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
