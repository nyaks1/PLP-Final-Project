import 'package:flutter/material.dart';

class CommunicationWidget extends StatefulWidget {
  const CommunicationWidget({super.key});

  @override
  _CommunicationWidgetState createState() => _CommunicationWidgetState();
}

class _CommunicationWidgetState extends State<CommunicationWidget> {
  bool _voiceCall = false;
  bool _text = false;
  bool _videoCall = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Communication Preferences',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        CheckboxListTile(
          title: const Text('Voice Call'),
          value: _voiceCall,
          onChanged: (value) {
            setState(() {
              _voiceCall = value!;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Text'),
          value: _text,
          onChanged: (value) {
            setState(() {
              _text = value!;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Video Call'),
          value: _videoCall,
          onChanged: (value) {
            setState(() {
              _videoCall = value!;
            });
          },
        ),
      ],
    );
  }
}
