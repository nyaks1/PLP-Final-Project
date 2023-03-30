import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
static const routeName = '/store';

  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mental Health Shop'),
      ),
      body: const Center(
        child: Text('Welcome to the Mental Health Shop!'),
      ),
    );
  }
}
