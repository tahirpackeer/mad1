import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          CircleAvatar(
           radius: 40,
           backgroundImage: AssetImage('assets/images/prof_pic2.png'), // Load image from computer
          ),
            SizedBox(height: 20),
            Text("GOOD MORNING TAHIR",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('MY DETAILS', style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('MY ORDERS', style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.money),
                    title: Text('PAYMENT METHOD', style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {},
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                      minimumSize:MaterialStatePropertyAll<Size> (Size(400.0, 50.0)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                        'SIGN OUT',
                        style: TextStyle(
                            color: Colors.white
                        )
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MyDetailsPage extends StatelessWidget {
  const MyDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('First Name: Aamina'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Last Name: Banu'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Date of Birth: 14-12-2002'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email: aami.na@example.com'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact Number: +9474567890'),
            ),
          ],
        ),
      ),
    );
  }
}



