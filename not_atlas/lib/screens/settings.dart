import 'package:flutter/material.dart';

import 'package:not_atlas/screens/logindetails_screen.dart';

import 'logindetails_screen.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Text(
            'My Account',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            subtitle: const Text('Edit your profile information'),
            onTap: () {
              // TODO: Implement profile editing functionality
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Change Password'),
            onTap: () {
              // TODO: Implement change password functionality
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('Delete Account'),
            onTap: () {
              // TODO: Implement delete account functionality
            },
          ),
          const SizedBox(height: 16),
          const Text(
            'App Settings',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SwitchListTile(
            title: const Text('Notifications'),
            subtitle: const Text('Receive notifications for updates and news'),
            value: true, // TODO: Set the value based on user preference
            onChanged: (newValue) {
              // TODO: Save the new value to user preference
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Sign Out'),
            onTap: () {
              // TODO: Implement sign out functionality
              Navigator.pushReplacementNamed(
                  context, LoginDetailsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
