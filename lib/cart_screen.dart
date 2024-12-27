import 'package:flutter/material.dart';
import 'order_summary_screen.dart';  // Import Order Summary screen

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Product 1"),
            subtitle: Text("\$29.99"),
          ),
          ListTile(
            title: Text("Product 2"),
            subtitle: Text("\$49.99"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderSummaryScreen()),
              );
            },
            child: Text("Checkout"),
          ),
        ],
      ),
    );
  }
}
