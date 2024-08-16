import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'favourites_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  final VoidCallback toggleTheme;

  const HomePage({required this.toggleTheme});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    ExplorePage(),
    CartPage(),
    FavouritesPage(),
    ProfilePage(),
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
        automaticallyImplyLeading: false, // Removes the back arrow
        title: Text(
          'VIBRANT',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: widget.toggleTheme,
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MediaQuery.of(context).orientation == Orientation.portrait
          ? BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.black), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.black), label: 'Favourites'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      )
          : Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Navigation'),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              title: Text('Cart'),
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              title: Text('Favourites'),
              onTap: () => _onItemTapped(2),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}

class ExplorePage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/homepage2.webp',
    'assets/images/homepage7.webp',
    'assets/images/homepage6.webp',
    'assets/images/homepage1.webp',
    'assets/images/hopepage4.webp',
    'assets/images/homepage3.webp',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Look for products',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.teal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/homepage2.webp',
                        fit: BoxFit.cover,
                        width: 160,
                        height: 150,
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/images/homepage1.webp',
                        fit: BoxFit.cover,
                        width: 160,
                        height: 150,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'UP TO 70% OFF* RIGHT NOW',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Shop now and save up to 70% on everything from performance tees and leggings to sports sweatshirts and shorts.',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: imagePaths.length, // Use the length of the imagePaths list
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(index: index),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset(
                            imagePaths[index],
                            width: double.infinity, // Fit the image to the card's width
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Product $index'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  final int index;

  const ProductDetailPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Center(
        child: Text('Detail for Product $index'),
      ),
    );
  }
}
