import 'package:flutter/material.dart';

class PsychologistScreen extends StatelessWidget {
  static const routeName = '/psychologist';

  const PsychologistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get a Psychologist'),
      ),
      body: Center(
        child: Text(
          'Taking care of your mental health is important, and speaking to a qualified therapist can help. Our platform offers access to licensed psychologists who can support you through your challenges. To get started, click on the microphone icon and say "get me a psychologist" to connect with a therapist today.',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, PsychologistScreen.routeName);
          },
          child: Icon(Icons.mic),
        ),
      ),
    );
  }
}
