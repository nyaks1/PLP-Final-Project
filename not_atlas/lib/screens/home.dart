import 'package:flutter/material.dart';
import 'anxiety.dart';
import 'bi_polar.dart';
import 'depression.dart';
import 'ptsd.dart';
import 'substance_abuse.dart';
import 'suicide.dart';
import 'inbox.dart';
import 'profile.dart';
import 'store.dart';
import 'new_group.dart';
import 'notification.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not-Atlas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Join a group to connect with others',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SuicideGroupScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
                  child: const Text('Suicide'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DepressionScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  child: const Text('Depression'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AnxietyScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                  child: const Text('Anxiety'),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, PTSD.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[200],
                  ),
                  child: const Text('Post-Traumatic Stress Disorder'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SubstanceAbuseScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[300],
                  ),
                  child: const Text('Substance Abuse'),
                ),
                  ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, BipolarScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[700],
                  ),
                  child: const Text('Bipolar Disorder'),
                  )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
          ),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey[500],
        onTap: (index) {
          switch (index) {
            case 0:
              // do nothing since we are already on the home screen
              break;
            case 1:
              // navigate to the mic screen
              break;
            case 2:
              Navigator.pushNamed(context, ProfileScreen.routeName);
              break;
            case 3:
              Navigator.pushNamed(context, AddGroupScreen.routeName);
              break;
            case 4:
              Navigator.pushNamed(context, NotificationScreen.routeName);
              break;
            case 5:
              Navigator.pushNamed(context, InboxScreen.routeName);
              break;
            case 6:
              Navigator.pushNamed(context, StoreScreen.routeName);
              break;
            default:
              // do nothing
              break;
          }
        },
      ),
    );
  }
}
