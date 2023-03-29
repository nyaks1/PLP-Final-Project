import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'logindetails_screen.dart';
import 'create_account.dart';
import 'forgot_password.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Not-Atlas',
      initialRoute: '/', // Define your initial route
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/logindetails': (context) => LoginDetailsScreen(),
        '/create': (context) => const CreateAccountScreen(),
        '/forgot': (context) => const ForgotPasswordScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
