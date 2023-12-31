import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sinke Bank'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/sinke_bank_logo.png', // Replace with your actual image asset path
                height: 100,
                width: 100,
              ),
              SizedBox(height: 20),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue),
      ),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add sign-up logic here
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
