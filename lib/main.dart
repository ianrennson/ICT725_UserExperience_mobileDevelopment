import 'package:flutter/material.dart';
import 'welcome_screen.dart'; // Import the WelcomeScreen
// Import the CreateAccountScreen
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Commute PodHub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(), 
    );
  }
}
