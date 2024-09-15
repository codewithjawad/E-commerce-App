import 'package:flutter/material.dart';
import '../../cartlist.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Order Details',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: orderItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(
                orderItems[index]['imagePath'] ?? '',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(orderItems[index]['title'] ?? ''),
              subtitle: Text('PKR ${orderItems[index]['price'] ?? '0'}'),
              trailing: Text(
                'Qty: ${orderItems[index]['quantity'] ?? '0'}',
                style: const TextStyle(fontSize: 16),
              ),
            );
          },
        ),
      ),
    );
  }
}
