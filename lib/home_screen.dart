import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/search_icon.png',
            width: 24,  // Adjust the width for the search icon
            height: 24, // Adjust the height for the search icon
            color: Colors.black,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/refresh_icon.png',
              width: 24,  // Adjust the width for the refresh icon
              height: 24, // Adjust the height for the refresh icon
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search topic',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/search_icon.png',
                            width: 24,  // Adjust size for search icon in the text field
                            height: 24, // Adjust size for search icon in the text field
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), // Adjust spacing if needed
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/logout_icon.png',
                      width: 30,  // Adjust the width for the logout icon
                      height: 30, // Adjust the height for the logout icon
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Recommended Section with Arrow
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Recommended',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 30, color: Color.fromARGB(255, 57, 11, 185)),
                ],
              ),
              const SizedBox(height: 10),
              _buildPodcastGridSection(
                images: ['assets/tony_robbins.png', 'assets/business_wars.png', 'assets/joe_rogan.png'],
                titles: ['Tony Robbins Podcast', 'Business Wars', 'The Joe Rogan Experience'],
              ),
              const SizedBox(height: 20),

              // Based on your Interest Section with Arrow
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Based on your Interest',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 30, color: Color.fromARGB(255, 57, 11, 185)),
                ],
              ),
              const SizedBox(height: 10),
              _buildPodcastGridSection(
                images: ['assets/language.png', 'assets/self_improvement.png', 'assets/technology.png'],
                titles: ['Language', 'Self-Improvement', 'Technology'],
              ),
              const SizedBox(height: 20),

              // Based on your Mood Section with Arrow
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Based on your mood',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 30, color: Color.fromARGB(255, 57, 11, 185)), // Arrow icon
                ],
              ),
              const SizedBox(height: 10),
              _buildPodcastGridSection(
                images: ['assets/sad.png', 'assets/excited.png', 'assets/angry.png'],
                titles: ['Feeling sad?', 'Feeling excited?', 'Feeling angry?'],
              ),
              const SizedBox(height: 20),

              // Commute Time Input
              Row(
                children: [
                  const Text(
                    'Commute time left:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 70,
                    child: TextField(
                      decoration: const InputDecoration(labelText: 'Hours'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 70,
                    child: TextField(
                      decoration: const InputDecoration(labelText: 'Minutes'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Bottom Navigation Images with Labels
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/logo.png', height: 75),
                      const SizedBox(height: 5),
                      const Text('Home', style: TextStyle(fontSize: 16)), 
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/settings_icon.png', height: 75),
                      const SizedBox(height: 5),
                      const Text('Settings', style: TextStyle(fontSize: 16)),  
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/player_icon.png', height: 75),
                      const SizedBox(height: 5),
                      const Text('Player', style: TextStyle(fontSize: 16)),  
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/library_icon.png', height: 75),
                      const SizedBox(height: 5),
                      const Text('Library', style: TextStyle(fontSize: 16)),  
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPodcastGridSection({required List<String> images, required List<String> titles}) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2,   // Reduced spacing between rows
        crossAxisSpacing: 2,  // Reduced spacing between columns
        childAspectRatio: 1,  // Adjusted ratio to make images larger
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.asset(
              images[index],
              height: 180,  // Increased image height
            ),
            const SizedBox(height: 5),
            Text(
              titles[index],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),  // Increased font size for better readability
            ),
          ],
        );
      },
    );
  }
}
