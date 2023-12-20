import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation'),
      ),
      body: ListView(
        children: <Widget>[
          CartItem(
            title: 'Cappuccino',
            size: 'large',
            price: 14,
            imageUrl: 'assets/cappuccino.png',
            key: ValueKey('unique_key'),
          ),
          // Repeat for each item...
          SummarySection(
            subtotal: 42.00,
            shipping: 4.00,
            tax: 2.00,
            key: ValueKey('unique_key'),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          child: Text('Continue To Payment'),
          onPressed: () {
            // Implement navigation or payment logic
          },
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String title;
  final String size;
  final double price;
  final String imageUrl;

  const CartItem(
      {required Key key,
      required this.title,
      required this.size,
      required this.price,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(imageUrl),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title),
              Text('Size:$size'),
            ],
          ),
        ),
        Text('\$$price'),
        // Quantity controls would go here
      ],
    );
  }
}

class SummarySection extends StatelessWidget {
  final double subtotal;
  final double shipping;
  final double tax;

  const SummarySection(
      {required Key key,
      required this.subtotal,
      required this.shipping,
      required this.tax})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Subtotal \$${subtotal.toStringAsFixed(2)}'),
        Text('Shipping \$${shipping.toStringAsFixed(2)}'),
        Text('Tax \$${tax.toStringAsFixed(2)}'),
        Text('Total \$${(subtotal + shipping + tax).toStringAsFixed(2)}'),
      ],
    );
  }
}
