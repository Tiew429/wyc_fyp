import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/add_recipe_pages/addrecipe.dart';
import 'package:flutter_application_1/pages/bookmark_pages/bookmark.dart';
import 'package:flutter_application_1/pages/camera_pages/camera.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_pages.dart/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  // List of pages for each bottom navigation item.
  final List<Widget> _pages = [
    const HomePage(),
    const BookmarkPage(), // Bookmark page
    const CameraPage(),
    const AddrecipePage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe App'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Search bar at the bottom.
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                // Implement search functionality if needed.
              },
            ),
          ),
          // Bottom navigation icons.
          BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt),
                label: 'Camera',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ],
      ),
    );
  }
}