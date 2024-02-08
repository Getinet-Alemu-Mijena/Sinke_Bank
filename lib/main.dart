import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_page.dart';
import 'user_profile_page.dart';
import 'sign_in.dart';
import 'sign_up.dart';
// import 'scafold_wedgit.dart';
import 'Admin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sinke Bank',
      initialRoute: '/', // The initial route is the home page
      routes: {
        '/':(context)=>LoginPage(),
        '/signup':(context)=>SignUpPage(),
        '/home': (context) => HomePage(),
        '/admin':(context)=>Admin(),
        '/second': (context) => const SecondPage(),
        '/userprofile':(context)=>UserProfilePage(),
      },
    );
  }
}
