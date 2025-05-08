import 'package:flutter/material.dart';

class CartTotal extends StatelessWidget {
  final double total;

  CartTotal({required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blue.shade50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Total:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text('\$${total.toStringAsFixed(2)}', style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
