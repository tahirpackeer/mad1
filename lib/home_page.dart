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
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final iconColor = isDarkMode ? Colors.white : Colors.black;
    final backgroundColor = isDarkMode ? Colors.black : Colors.white;

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
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, color: iconColor), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: iconColor), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite, color: iconColor), label: 'Favourites'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: iconColor), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: backgroundColor,
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

  final List<String> productNames = [
    'Sport 5 Shorts',
    'Sports Sweatshirt',
    'Sports Graphic joggers',
    'Dry Fit Long-Sleeves',
    'Dry Fit Short-Sleeves',
    'Running tshirt',
    // Add more product names as needed
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
                  borderSide: BorderSide(width: 3),
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
                      Expanded(
                        flex: 2, // Use 2/3 of the row space for the first image
                        child: Image.asset(
                          'assets/images/homepage2.webp',
                          fit: BoxFit.cover,
                          height: 150, // Fixed height for consistency
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 2, // Use 1/3 of the row space for the second image
                        child: Image.asset(
                          'assets/images/homepage1.webp',
                          fit: BoxFit.cover,
                          height: 150, // Fixed height for consistency
                        ),
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
            OrientationBuilder(
              builder: (context, orientation) {
                return GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
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
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                              child: Text(
                                productNames[index],
                                textAlign: TextAlign.center, // Center align product name
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
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
