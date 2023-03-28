import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Not-Atlas'),
      ),
      body: Container(
        color: Colors.purple, // Set the background color
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Welcome to Not-Atlas!',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign in'),
              ),
              SizedBox(height: 8),
              OutlinedButton(
                onPressed: () {},
                child: Text('Sign up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
