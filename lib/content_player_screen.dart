import 'package:flutter/material.dart';
import 'settings_screen.dart';
import 'library_screen.dart';
import 'home_screen.dart';
import 'logout_scren.dart';
import 'choose_interest_screen.dart';
import 'set_mood_screen.dart';
import 'commute_time_screen.dart';

class ContentPlayerScreen extends StatelessWidget {
  const ContentPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Content Player'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/search_icon.png',
            width: 24,
            height: 24,
            color: Colors.black,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/refresh_icon.png',
              width: 24,
              height: 24,
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
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(height: 5),
                        const Text('Logout', style: TextStyle(fontSize: 12)), // Label for logout
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

             // Interest, Mood, Commute Time Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                                  onTap: () {
                                  
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChooseInterestScreen(),
                          ),
                        );
                  },
                            child: Image.asset('assets/interest_icon.png', height: 40),
                          ),
                          const SizedBox(height: 5),
                          const Text('Interest', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                                  onTap: () {
                                Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SetMoodScreen(),
                          ),
                        );
                  
                        },
                            child: Image.asset('assets/mood_icon.png', height: 40),
                          ),
                          const SizedBox(height: 5),
                          const Text('Mood', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                                  onTap: () {
                                  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CommuteTimeScreen(),
                          ),
                        );    
                     },
                            child: Image.asset('assets/commute_time_icon.png', height: 40),
                          ),
                          const SizedBox(height: 5),
                          const Text('Time', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),


              // Podcast Image
              Center(
                child: Image.asset('assets/sad.png', height: 520),
              ),
              const SizedBox(height: 30),

              // Player Controls
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('assets/previous_icon.png', height: 70),
                  ),
                  const SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('assets/play_icon.png', height: 100),
                  ),
                  const SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('assets/next_icon.png', height: 70),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Additional Controls (Download, Favorite, Playlist)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LibraryScreen()),
                            );
                            },
                    child: Image.asset('assets/favorite_icon.png', height: 30),
                  ),
                  const SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LibraryScreen()),
                            );
                            },
                    child: Image.asset('assets/download_icon.png', height: 30),
                  ),
                  const SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LibraryScreen()),
                            );
                            },
                    child: Image.asset('assets/playlist_icon.png', height: 30),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Now Playing Info
              const Center(
                child: Text(
                  'Now Playing: why am i sad?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              const Center(
                child: Text(
                  'By: a happy little podcast',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 30),

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
}
