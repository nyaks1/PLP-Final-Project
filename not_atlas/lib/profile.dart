import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:country_picker/country_picker.dart';
import 'package:not_atlas/widget/triggers.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime startDate = DateTime(1800);
    DateTime endDate = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/profile_pic.jpg'),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Text(
                    'Tell us about you',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Name and Surname',
              style: TextStyle(fontSize: 16.0),
            ),
            const TextField(
              decoration:
                  InputDecoration(hintText: 'Enter your name and surname'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Age',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                startDate: startDate,
                endDate: endDate,
              ),
              initialSelectedDate: startDate,
              onValueChanged: (date) {}, value: const [1900],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Location',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            InkWell(
              onTap: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode: false,
                  onSelect: (Country country) {
                    ('Select country: ${country.displayName}');
                  },
                );
              },
              child: Row(
                children: const [
                  Icon(Icons.location_on),
                  SizedBox(width: 16.0),
                  Text('Select country'),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Mental Health History (100 words)',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              decoration:
                  InputDecoration(hintText: 'Enter your mental health history'),
              maxLines: 4,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Triggers',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const TriggersWidget(),
            const SizedBox(height: 16.0),
            const Text(
              'Preferred Communication',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            CommunicationWidget(),
            const SizedBox(height: 16.0),
            const Text(
              'Do you have additional emotional support?',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            EmotionalSupportWidget(),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
