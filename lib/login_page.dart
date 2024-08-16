import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback toggleTheme;

  const LoginPage({required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/gym.jpg',
            fit: BoxFit.cover,
            color: isDarkMode ? Colors.black.withOpacity(0.6) : Colors.transparent,
            colorBlendMode: isDarkMode ? BlendMode.darken : BlendMode.srcOver,
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 300),
                  Card(
                    color: isDarkMode ? Colors.black.withOpacity(0.85) : Colors.white.withOpacity(0.85),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 30),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Password",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: isDarkMode ? Colors.white : Colors.black,
                                ),
                              ),
                              Text(
                                "Forgot password?",
                                style: TextStyle(
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                  color: isDarkMode ? Colors.white : Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                              suffixIcon: Icon(Icons.visibility, color: isDarkMode ? Colors.white : Colors.black),
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
                              'LOG IN',
                              style: TextStyle(
                                color: isDarkMode ? Colors.black : Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text(
                              "Don't have an account?",
                              style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
