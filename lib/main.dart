import 'package:flutter/material.dart';
import 'home_page.dart';
import 'projects_page.dart';
import 'skills_page.dart';
import 'contact_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue.shade50,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade800,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade700,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: HomePage(),
      routes: {
        '/skills': (context) => SkillsPage(),
        '/projects': (context) => ProjectsPage(),
        '/contact': (context) => ContactPage(),
      }
    );
  }
}