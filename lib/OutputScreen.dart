import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  const OutputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    final username = args?['username'];
    final password = args?['password'];
    final email = args?['email'];
    final rememberMe = args?['rememberMe'];
    final gender = args?['gender'];
    final country = args?['country'];
    final age = args?['age'];
    final selectedDate = args?['selectedDate'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Output Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username: $username'),
            Text('Password: $password'),
            Text('Email: $email'),
            Text('Remember Me: $rememberMe'),
            Text('Gender: $gender'),
            Text('Country: $country'),
            Text('Age: $age'),
            Text('Selected Date: ${selectedDate?.toLocal().toString().split(' ')[0] ?? 'Not selected'}'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the form screen
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}