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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sinke Bank'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_balance),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BankFunctionsList(),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            IconButton(
              icon: Icon(Icons.credit_card),
              onPressed: () {
                // Handle credit card button press
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
               Navigator.pushNamed(context, '/userprofile');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BankFunctionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ResponsiveBankFunctionCard(
          title: 'Account Balance',
          description: 'Check your account balance',
        ),
        ResponsiveBankFunctionCard(
          title: 'Transfer Money',
          description: 'Transfer money to another account',
        ),
        ResponsiveBankFunctionCard(
          title: 'Pay Bills',
          description: 'Pay utility bills and other expenses',
        ),
        ResponsiveBankFunctionCard(
          title: 'Pay Bills',
          description: 'Pay utility bills and other expenses',
        ),
        ResponsiveBankFunctionCard(
          title: 'Pay Bills',
          description: 'Pay utility bills and other expenses',
        ),
        ResponsiveBankFunctionCard(
          title: 'Pay Bills',
          description: 'Pay utility bills and other expenses',
        ),
        ResponsiveBankFunctionCard(
          title: 'Pay Bills',
          description: 'Pay utility bills and other expenses',
        ),
      ],
    );
  }
}

class ResponsiveBankFunctionCard extends StatelessWidget {
  final String title;
  final String description;

  const ResponsiveBankFunctionCard({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
