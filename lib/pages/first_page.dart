import 'package:demo_learn_flutter/pages/profile_page.dart';
import 'package:demo_learn_flutter/pages/settings_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    const HomePage(),
    const SettingsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: const Text(
          "1st Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        elevation: 0,
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 48,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("H O M E"),
              onTap: () {
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("S E T T I N G"),
              onTap: () {
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        backgroundColor: Colors.deepPurple[200],
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'H O M E',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'P R O F I L E',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'S E T T I N G S',
          ),
        ],
      ),
    );
  }
}
