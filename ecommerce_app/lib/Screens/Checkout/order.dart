import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  final dynamic items;
  const Order({super.key, required this.items});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        final String title = item['title'] ?? 'Unknown';
        final String price = item['price'] ?? 'N/A';
        final String imagePath =
            item['imagePath'] ?? 'assets/default_image.png';
        final int quantity = item['quantity'] ?? 1;

        return ListTile(
          leading: Image.asset(
            imagePath,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(title),
          subtitle: Text(price),
          trailing: Text(
            'Qty: $quantity',
            style: const TextStyle(fontSize: 16),
          ),
        );
      },
    );
  }
}
