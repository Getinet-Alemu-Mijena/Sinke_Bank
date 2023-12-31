import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_page.dart';
import 'user_profile_page.dart';
import 'sign_in.dart';
import 'sign_up.dart';
import 'scafold_wedgit.dart';

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
        '/': (context) => LoginPage(), // Home page
        '/second': (context) => const SecondPage(), // Second page
        '/userprofile':(context)=>UserProfilePage(),
        '/home':(context)=>HomePage(),
        '/signup':(context)=>SignUpPage(),
        '/scaffolded':(context)=>MyStatefulWidget(),
      },
    );
  }
}
