import 'package:flutter/material.dart';
import 'login_page.dart';
import 'registration_page.dart';
import 'home_page.dart';

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
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(toggleTheme: toggleTheme),
        '/register': (context) => RegistrationPage(toggleTheme: toggleTheme),
        '/home': (context) => HomePage(toggleTheme: toggleTheme),
      },
    );
  }
}
