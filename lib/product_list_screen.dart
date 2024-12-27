import 'package:flutter/material.dart';
import 'cart_screen.dart';  // Import Cart screen for navigation

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,  // Example products count
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.image),
            title: Text("Product $index"),
            subtitle: Text("\$29.99"),
            onTap: () {
              // Navigate to product details page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailsScreen()),
              );
            },
          );
        },
      ),
    );
  }
}
