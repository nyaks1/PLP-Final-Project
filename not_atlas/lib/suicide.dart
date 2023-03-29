import 'package:flutter/material.dart';

class SuicideGroupScreen extends StatelessWidget {
   static const String routeName = '/suicide';

  const SuicideGroupScreen({super.key});
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suicide Group'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.lightGreen,
              child: const Text(
                'Our group is here for individuals who are struggling with suicidal thoughts or have been impacted by suicide and we are committed to providing a safe and inclusive space for everyone who needs support.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Post $index'),
                    subtitle: Text('Content of Post $index'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add Post to Group
        },
        backgroundColor: Colors.lightGreen,
        child: const Icon(Icons.add),
      ),
    );
  }
}
