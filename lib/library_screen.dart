import 'package:flutter/material.dart';
import 'content_player_screen.dart';
import 'settings_screen.dart';
import 'home_screen.dart';
import 'logout_scren.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Library'),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/refresh_icon.png',
                  width: 30,  
                  height: 30, 
                ),
              ),
            ],
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
                            width: 24,  
                            height: 24, 
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LogoutScreen()),  // Navigate to LogoutScreen on tap
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logout_icon.png',
                          width: 30,  // Adjust the width for the logout icon
                          height: 30, // Adjust the height for the logout icon
                        ),
                        const SizedBox(height: 5),
                        const Text('Logout', style: TextStyle(fontSize: 12)), // Label for Logout
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Favorites Section
              const Text(
                'Favorites',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildPodcastGridSection(
                images: ['assets/sad.png', 'assets/tony_robbins.png', 'assets/joe_rogan.png'],
                titles: ['Feeling sad?', 'Tony Robbins Podcast', 'The Joe Rogan Experience'],
              ),
              const SizedBox(height: 20),

              // Playlist Section
              const Text(
                'Playlist',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildPodcastGridSection(
                images: ['assets/technology.png', 'assets/self_improvement.png', 'assets/angry.png'],
                titles: ['Technology', 'Self-Improvement', 'Feeling angry?'],
              ),
              const SizedBox(height: 20),

              // Downloaded Section
              const Text(
                'Downloaded',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildPodcastGridSection(
                images: ['assets/hustle.png', 'assets/science.png', 'assets/feelings.png'],
                titles: ['Side Hustle Pro', 'Growth Mindset', 'Feeling Smart?'],
              ),
              const SizedBox(height: 70),

              // Bottom Navigation Images with Labels
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),
                          );
                        },
                        child: Image.asset('assets/logo.png', height: 75),
                      ),
                      const SizedBox(height: 5),
                      const Text('Home', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SettingsScreen()),
                          );
                        },
                        child: Image.asset('assets/settings_icon.png', height: 75),
                      ),
                      const SizedBox(height: 5),
                      const Text('Settings', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ContentPlayerScreen()),
                          );
                        },
                        child: Image.asset('assets/player_icon.png', height: 75),
                      ),
                      const SizedBox(height: 5),
                      const Text('Player', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LibraryScreen()),
                          );
                        },
                        child: Image.asset('assets/library_icon.png', height: 75),
                      ),
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
