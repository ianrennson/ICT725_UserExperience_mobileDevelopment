import 'package:flutter/material.dart';
import 'home_screen.dart'; 
class CommuteTimeScreen extends StatelessWidget {
  const CommuteTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COMMUTE TIME'),
        backgroundColor: Colors.blue,
      ),


      
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child: Column(
            children: [

              // Logo
              Image.asset(
                'assets/logo.png', 
                height: 200,
              ),
              


              const SizedBox(height: 20),
              const Text(
                'COMMUTE TIME',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Commute Time Inputs
              const Text(
                'Hours',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Hours',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),

              const Text(
                'Minutes',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Minutes',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),

          // Image Below Text Fields
            Image.asset(
              'assets/hourglass.gif', 
              height: 300,
            ),
            const SizedBox(height: 50),


              // NEXT Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to Home Screen
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
                child: const Text('NEXT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
