import 'package:flutter/material.dart';
import 'set_mood_screen.dart';

class ChooseInterestScreen extends StatelessWidget {
  const ChooseInterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a list of interest names corresponding to each image
    final List<String> interestNames = [
      'Self-Improvement', 'History', 'Technology', 'General Knowledge', 'Music',
      'Literature', 'Art', 'Science', 'Health', 'Fitness',
      'Travel', 'Business & Finance', 'Cooking', 'Psychology', 'Others'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Interest'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Choose interest',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Interests Grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(interestNames.length, (index) {
                    return Column(
                      children: [
                        Image.asset(
                          'assets/interest_${index + 1}.png', // Example image names: interest_1.png, interest_2.png, ...
                          height: 50,
                        ),
                        const SizedBox(height: 10),
                        Text(interestNames[index]), // Use the name from the list
                      ],
                    );
                  }),
                ),
              ),
              const SizedBox(height: 20),

              // NEXT Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to Set Mood Screen
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
                child: const Text('NEXT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
