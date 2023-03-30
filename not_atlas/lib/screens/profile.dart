import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:country_picker/country_picker.dart';
import 'package:not_atlas/widget/triggers.dart';
import 'package:not_atlas/widget/communication.dart';
import 'package:not_atlas/widget/emotional_support.dart';
import 'package:not_atlas/widget/select_date.dart';

class ProfileScreen extends StatelessWidget {
static const routeName = '/profile';

  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    DateTime startDate = DateTime(1800);
    DateTime endDate = DateTime.now();
    List<DateTime> selectedDates = [DateTime(1990)];

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
            ElevatedButton(
              onPressed: () async {
                var result = await showCalendarDatePicker2Dialog(
                  context: context,
                  config: CalendarDatePicker2WithActionButtonsConfig(
                    firstDate: startDate,
                    lastDate: endDate,
                  ),
                  dialogSize: const Size(325, 400),
                  value: selectedDates,
                  borderRadius: BorderRadius.circular(15),
                );
                if (result != null) {
                  selectedDates = [];
                }
              },
              child: Text(selectedDates[0].toString()),
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
            const CommunicationWidget(),
            const SizedBox(height: 16.0),
            const Text(
              'Do you have additional emotional support?',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const EmotionalSupportWidget(),
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
