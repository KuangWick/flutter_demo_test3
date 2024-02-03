import 'package:demo_learn_flutter/pages/first_page.dart';
import 'package:demo_learn_flutter/pages/home_page.dart';
import 'package:demo_learn_flutter/pages/profile_page.dart';
import 'package:demo_learn_flutter/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
      routes: {
        '/firstpage': (context) => const FirstPage(),
        '/homepage': (context) => const HomePage(),
        '/settingspage': (context) => const SettingsPage(),
        '/profilepage' : (context) => const ProfilePage(),
      },
    );
  }
}
