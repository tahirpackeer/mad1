import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the back arrow
        title: Text('Favourites'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3, // Adjust crossAxisCount based on orientation
            childAspectRatio: 0.75, // Aspect ratio of each grid item
            padding: EdgeInsets.all(10.0),
            children: [
              _buildProductTile('Product 1', 'assets/images/homepage2.webp'),
              _buildProductTile('Product 2', 'assets/images/homepage6.webp'),
              _buildProductTile('Product 3', 'assets/images/homepage7.webp'),
              _buildProductTile('Product 4', 'assets/images/homepage3.webp'),
              _buildProductTile('Product 5', 'assets/images/hopepage4.webp'),
              _buildProductTile('Product 6', 'assets/images/homepage1.webp'),
            ],
          );
        },
      ),
    );
  }

  Widget _buildProductTile(String productName, String imagePath) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: Text(productName),
            trailing: Icon(Icons.favorite, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
