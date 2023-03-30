import 'package:flutter/material.dart';

class EmotionalSupportWidget extends StatefulWidget {
  const EmotionalSupportWidget({super.key});

  @override
  _EmotionalSupportWidgetState createState() => _EmotionalSupportWidgetState();
}

class _EmotionalSupportWidgetState extends State<EmotionalSupportWidget> {
  bool _needsEmotionalSupport = false;

  void _handleEmotionalSupportChange(bool value) {
    setState(() {
      _needsEmotionalSupport = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Do you need emotional support?',
          style: TextStyle(fontSize: 16.0),
        ),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('No'),
            Switch(
              value: _needsEmotionalSupport,
              onChanged: _handleEmotionalSupportChange,
            ),
            const Text('Yes'),
          ],
        ),
        if (_needsEmotionalSupport)
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'We are here for you!',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
      ],
    );
  }
}
