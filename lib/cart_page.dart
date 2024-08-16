import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the back arrow
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Image.asset('assets/images/homepage1.webp'),
                  title: Text('Dry Fit Long-Sleeves'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.remove, color: Colors.white),
                          onPressed: () {
                            // Add functionality here
                          },
                        ),
                      ),
                      SizedBox(width: 8), // Add space between buttons and text
                      Text('2'),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add, color: Colors.white),
                          onPressed: () {
                            // Add functionality here
                          },
                        ),
                      ),
                      SizedBox(width: 16),
                      Text('LKR 3000'),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                ListTile(
                  leading: Image.asset('assets/images/homepage2.webp'),
                  title: Text('Sport 5 Shorts'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.remove, color: Colors.white),
                          onPressed: () {
                            // Add functionality here
                          },
                        ),
                      ),
                      SizedBox(width: 8),
                      Text('1'),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add, color: Colors.white),
                          onPressed: () {
                            // Add functionality here
                          },
                        ),
                      ),
                      SizedBox(width: 16),
                      Text('LKR 1500'),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                ListTile(
                  leading: Image.asset('assets/images/homepage3.webp'),
                  title: Text('Dry Fit Short-Sleeve'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.remove, color: Colors.white),
                          onPressed: () {
                            // Add functionality here
                          },
                        ),
                      ),
                      SizedBox(width: 8),
                      Text('3'),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add, color: Colors.white),
                          onPressed: () {
                            // Add functionality here
                          },
                        ),
                      ),
                      SizedBox(width: 16),
                      Text('LKR 4500'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
                'Total',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            trailing: Text('LKR 9000'),
          ),
          SizedBox(height: 40),

        ],
      ),
    );
  }
}
