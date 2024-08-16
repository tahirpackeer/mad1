import 'package:flutter/material.dart';
import 'package:vibrant/login_page.dart';
import 'package:vibrant/registration_page.dart';
import 'package:vibrant/home_page.dart';

void main() {
  runApp(FitnessClothingApp());
}

class FitnessClothingApp extends StatefulWidget {
  @override
  _FitnessClothingAppState createState() => _FitnessClothingAppState();
}

class _FitnessClothingAppState extends State<FitnessClothingApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(toggleTheme: toggleTheme),
        '/register': (context) => RegistrationPage(),
        '/home': (context) => HomePage(toggleTheme: toggleTheme),
      },
    );
  }
}


