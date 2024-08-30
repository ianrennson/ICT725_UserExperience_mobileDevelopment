import 'package:flutter/material.dart';
import 'choose_interest_screen.dart'; // Import the Choose Interest Screen
import 'set_mood_screen.dart'; // Import the Set Mood Screen
import 'commute_time_screen.dart'; // Import the Commute Time Screen
import 'home_screen.dart'; // Import the Home Screen

class AccountLoggedInScreen extends StatelessWidget {
  const AccountLoggedInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'WELCOME TO',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              
              // Logo
              Image.asset(
                'assets/logo.png', 
                height: 200,
              ),
                        
              const SizedBox(height: 20),

              // Choose Interest Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseInterestScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(200, 50),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/interest_icon.png', 
                      height: 24, 
                    ),
                    const SizedBox(width: 8),
                    const Text('Choose interest'),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Set Mood Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SetMoodScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(200, 50),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/mood_icon.png', 
                      height: 24, 
                    ),
                    const SizedBox(width: 8),
                    const Text('Set mood'),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Commute Time Button with Image Icon
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CommuteTimeScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(200, 50),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/commute_time_icon.png', 
                      height: 24, 
                    ),
                    const SizedBox(width: 8),
                    const Text('Commute time'),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Get Started Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(200, 50),
                ),
                child: const Text('GET STARTED'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
