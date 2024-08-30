import 'package:flutter/material.dart';
import 'commute_time_screen.dart'; // Import the next screen

class SetMoodScreen extends StatelessWidget {
  const SetMoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a list of mood names corresponding to each image
    final List<String> moodNames = [
      'Happy', 'Sad', 'In Love', 'Surprised', 'Angry',
      'Scared', 'Confused', 'Contemplating', 'Nerdy', 'Flirty', 'Sleepy',
       'Unwell', 'Tears with Joy', 'Cheeky', 'Others'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Mood'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Set mood',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Moods Grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(moodNames.length, (index) {
                    return Column(
                      children: [
                        Image.asset(
                          'assets/mood_${index + 1}.png', // Example image names: mood_1.png, mood_2.png, ...
                          height: 50,
                        ),
                        const SizedBox(height: 10),
                        Text(moodNames[index]), // Use the name from the list
                      ],
                    );
                  }),
                ),
              ),
              const SizedBox(height: 20),

              // NEXT Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to Commute Time Screen
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
                child: const Text('NEXT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
