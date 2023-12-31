import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to the home page when the button is pressed
            Navigator.pop(context);
          },
          child: const Text('Go Back to Home Page'),
        ),
      ),
    );
  }
}
