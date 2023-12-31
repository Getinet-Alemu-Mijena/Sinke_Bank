import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sinke Bank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.account_balance,
              size: 30,
            ),
            SizedBox(width: 10),
            Text('Sinke Bank'),
          ],
        ),
      ),
      body: Center(
        child: Text('User Profile Content'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.blue,
        currentIndex: 1, // Set the current index for the selected tab (Profile).
        onTap: (index) {
          // Handle navigation to different tabs.
          // You can use a Navigator to navigate to different pages/screens.
          print('Tapped on index $index');
        },
      ),
    );
  }
}
