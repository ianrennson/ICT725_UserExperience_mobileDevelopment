import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'create_account_screen.dart';


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
              height: 300,
            ),
            


            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Placeholder for navigation
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






            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateAccountScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(200, 50),
              ),
              child: const Text('CREATE USER'),
            ),




            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Placeholder for navigation
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
