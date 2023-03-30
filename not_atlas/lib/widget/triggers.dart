import 'package:flutter/material.dart';

class TriggersWidget extends StatefulWidget {
  const TriggersWidget({super.key});

  @override
  _TriggersWidgetState createState() => _TriggersWidgetState();
}

class _TriggersWidgetState extends State<TriggersWidget> {
  List<String> _triggers = [    'Stress',    'Anxiety',    'Depression',    'Trauma',    'Abuse',    'Substance abuse',  
    'Loneliness',    'Grief and loss',  ];

  String _otherTrigger = '';

  void _handleTriggerSelection(String trigger) {
    setState(() {
      if (_triggers.contains(trigger)) {
        _triggers.remove(trigger);
      } else {
        _triggers.add(trigger);
      }
    });
  }

  void _handleOtherTriggerChange(String value) {
    setState(() {
      _otherTrigger = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: _triggers.map((trigger) {
            return FilterChip(
              label: Text(trigger),
              selected: _triggers.contains(trigger),
              onSelected: (selected) => _handleTriggerSelection(trigger),
            );
          }).toList(),
        ),
        const SizedBox(height: 16.0),
        const Text(
          'Other',
          style: TextStyle(fontSize: 16.0),
        ),
        const SizedBox(height: 8.0),
        TextField(
          decoration: const InputDecoration(hintText: 'Enter other triggers'),
          onChanged: _handleOtherTriggerChange,
          maxLines: 2,
        ),
      ],
    );
  }
}
