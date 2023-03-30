import 'package:flutter/material.dart';
import 'login_screen.dart';

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
        children: [
          const SizedBox(height: 16),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('Delete Account'),
            onTap: () {
              // TODO: implement delete account functionality
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Reset Password'),
            onTap: () {
              // TODO: implement reset password functionality
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Sign Out'),
            onTap: () {
              // TODO: implement sign out functionality
              Navigator.pushReplacementNamed(context, LoginScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}


