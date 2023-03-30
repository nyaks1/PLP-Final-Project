import 'dart:math';

import 'package:flutter/material.dart';

class AddGroupScreen extends StatefulWidget {
static const routeName = '/add';

  const AddGroupScreen({Key? key}) : super(key: key);

  @override
  _AddGroupScreenState createState() => _AddGroupScreenState();
}

class _AddGroupScreenState extends State<AddGroupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _groupNameController = TextEditingController();
  final _groupDescriptionController = TextEditingController();
  Color _groupColor = Colors.black; // default color

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // form is valid, create new group
      final newGroup = {
        'name': _groupNameController.text,
        'description': _groupDescriptionController.text,
        'color': _groupColor,
      };

      // TODO: add new group to database or list of groups

      // go back to previous screen
      Navigator.pop(context);
    }
  }

  void _generateRandomColor() {
    // generate random color
    final random = Random();
    Color newColor;
    do {
      newColor = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    } while (newColor == Colors.white || newColor == Colors.black);
    // make sure new color is not white or black
    setState(() {
      _groupColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Group'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _groupNameController,
                decoration: const InputDecoration(
                  labelText: 'Group Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a group name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _groupDescriptionController,
                decoration: const InputDecoration(
                  labelText: 'Group Description',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a group description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text('Group Color: '),
                  Container(
                    width: 32,
                    height: 32,
                    margin: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: _groupColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _generateRandomColor,
                    child: const Text('Random Color'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Add Group'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
