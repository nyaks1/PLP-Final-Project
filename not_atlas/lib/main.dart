import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/logindetails_screen.dart';
import 'screens/create_account.dart';
import 'screens/forgot_password.dart';
import 'screens/home.dart';
import 'model/user.dart';
import 'model/post.dart';
import 'model/comment.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Not-Atlas',
      initialRoute: '/splash', // Define your initial route
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

