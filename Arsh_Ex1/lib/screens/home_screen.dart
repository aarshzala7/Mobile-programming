import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import '../widgets/cart_total.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> products = [
    Product(name: 'Nike Air Max 90', price: 129.99, image: 'assets/nike1.png'),
    Product(name: 'Adidas Ultra Boost', price: 149.99, image: 'assets/adidas1.png'),
    Product(name: 'Puma Runner', price: 99.99, image: 'assets/puma1.png'),
    Product(name: 'Nike supreme', price: 299.99, image: 'assets/nike2.png'),
  ];

  List<Product> cart = [];

  void addToCart(Product product) {
    setState(() {
      cart.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    double total = cart.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(
        title: Text('Shoe shop'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: products
                  .map((product) => ProductCard(product: product, onAdd: () => addToCart(product)))
                  .toList(),
            ),
          ),
          CartTotal(total: total),
        ],
      ),
    );
  }
}
