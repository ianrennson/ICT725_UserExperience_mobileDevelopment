import 'package:flutter/material.dart';
import 'welcome_screen.dart'; // Import the WelcomeScreen
// Import the CreateAccountScreen
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Commute PodHub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(), // Ensure this points to WelcomeScreen
    );
  }
}
