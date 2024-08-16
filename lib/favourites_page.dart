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
              _buildProductTile('Sport Shorts', 'assets/images/homepage2.webp'),
              _buildProductTile('Sport joggers', 'assets/images/homepage6.webp'),
              _buildProductTile('Sports Sweatshirt', 'assets/images/homepage7.webp'),
              _buildProductTile('Running tshirt', 'assets/images/homepage3.webp'),
              _buildProductTile('Dry Fit Short-Sleeves', 'assets/images/hopepage4.webp'),
              _buildProductTile('Dry Fit Long-Sleeves', 'assets/images/homepage1.webp'),
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
