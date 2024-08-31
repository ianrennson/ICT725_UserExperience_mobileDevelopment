import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'content_player_screen.dart';
import 'library_screen.dart';
import 'logout_scren.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
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
                        MaterialPageRoute(builder: (context) => const LogoutScreen()), // Navigate to LogoutScreen on tap
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
                        const Text('Logout', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Settings Options
              const Text(
                'Settings',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30), 

              
              _buildSettingsOption('Account'),
              _buildSettingsOption('Content and Display'),
              _buildSettingsOption('Privacy and Social'),
              _buildSettingsOption('Audio Quality'),
              _buildSettingsOption('Video Quality'),
              _buildSettingsOption('Notifications'),
              _buildSettingsOption('Advertisement'),

              const SizedBox(height: 400), 

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

  Widget _buildSettingsOption(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0), 
      child: Text(
        title,
        style: const TextStyle(fontSize: 20), 
      ),
    );
  }
}
