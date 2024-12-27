import 'package:flutter/material.dart';

class OrderSummaryScreen extends StatelessWidget {
  final List<Map<String, String>> cart;

  OrderSummaryScreen({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Summary'),
      ),
      body: cart.isEmpty
          ? Center(
        child: Text(
          'Your cart is empty.',
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(cart[index]['name']!),
              subtitle: Text('Price: ${cart[index]['price']}'),
            ),
          );
        },
      ),
    );
  }
}
