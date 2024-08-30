import 'package:flutter/material.dart';
import 'create_account_screen.dart'; 
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                'assets/logo.png', 
                height: 200,
              ),
              

              const SizedBox(height: 20),
              const Text(
                'Enter your Email and instructions will be sent to you!',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),

              // Email TextField
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // Reset Password Button
              ElevatedButton(
                onPressed: () {
                  // Add reset password functionality here
                Navigator.pop(context); // Go back to the previous screen

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(200, 50),
                ),
                child: const Text('Reset Password'),
              ),
              const SizedBox(height: 20),

              // Login Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Remember it?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Go back to the previous screen
                    },
                    child: const Text('Login now'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Create Account Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateAccountScreen()),
                      );
                    },
                    child: const Text('Create account'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
