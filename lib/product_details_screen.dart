import 'package:flutter/material.dart';
import 'order_summary_screen.dart';

class ProductDetailsScreen extends StatefulWidget {
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final List<Map<String, String>> products = [
    {'name': 'Product 1', 'price': '\$10'},
    {'name': 'Product 2', 'price': '\$20'},
    {'name': 'Product 3', 'price': '\$30'},
  ];

  final List<Map<String, String>> cart = [];

  void addToCart(Map<String, String> product) {
    setState(() {
      cart.add(product);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product['name']} added to cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(products[index]['name']!),
                    subtitle: Text('Price: ${products[index]['price']}'),
                    trailing: ElevatedButton(
                      onPressed: () => addToCart(products[index]),
                      child: Text('Add to Cart'),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderSummaryScreen(cart: cart),
                ),
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Next'),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
