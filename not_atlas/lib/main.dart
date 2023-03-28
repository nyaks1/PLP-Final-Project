import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'logindetails_screen.dart';
import 'create_account.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Not-Atlas',
      initialRoute: '/', // Define your initial route
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/logindetails': (context) => LoginDetailsScreen(),
        '/create': (context) => CreateAccountScreen(),
      },
    );
  }
}
