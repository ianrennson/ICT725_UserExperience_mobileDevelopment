import 'package:flutter/material.dart';
import 'login_screen.dart'; 
import 'create_account_screen.dart'; 
import 'account_logged_in_screen.dart'; 

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Placeholder image widget
            Image.asset(
              'assets/logo.png', // Make sure this path is correct and the image exists
              height: 500,
            ),
           
            const SizedBox(height: 40),
            
            // Login Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(200, 50),
              ),
              child: const Text('LOGIN'),
            ),
            const SizedBox(height: 20),
            
            // Create Account Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateAccountScreen()), // Navigate to Create Account Screen
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(200, 50),
              ),
              child: const Text('CREATE USER'),
            ),
            const SizedBox(height: 20),
            
            // Continue as Guest Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AccountLoggedInScreen()), // Navigate to Account Logged-in Screen
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(200, 50),
              ),
              child: const Text('continue as GUEST'),
            ),
          ],
        ),
      ),
    );
  }
}
