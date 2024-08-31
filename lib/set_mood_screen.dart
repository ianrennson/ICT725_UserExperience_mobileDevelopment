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
        padding: const EdgeInsets.all(50.0),
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
                          'assets/mood_${index + 1}.png', 
                          height: 100,
                        ),
                        const SizedBox(height: 10),
                        Text(moodNames[index]),
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
