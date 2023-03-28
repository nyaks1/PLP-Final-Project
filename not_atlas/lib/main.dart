import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'logindetails_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Not-Atlas',
      initialRoute: '/', // Define your initial route
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/logindetails': (context) =>
            LoginDetailsScreen() // Add your login screen route here
      },
    );
  }
}
