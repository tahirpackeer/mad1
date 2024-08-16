import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  final VoidCallback toggleTheme;

  const RegistrationPage({required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the back arrow
        title: Text(
          'Register',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: isDarkMode ? Colors.white : Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: isDarkMode ? Colors.white : Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: isDarkMode ? Colors.white : Colors.black),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(isDarkMode ? Colors.white : Colors.black),
                  minimumSize: MaterialStateProperty.all<Size>(Size(400.0, 50.0)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    color: isDarkMode ? Colors.black : Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Back to login",
                  style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
