import 'package:ecommerce_app/Screens/Checkout/checkout.dart';
import 'package:flutter/material.dart';
import '../../cartlist.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  CheckoutScreen a = CheckoutScreen(
    orderItems: cartItems,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Order Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: a.orderItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(
                a.orderItems[index]['imagePath'] ?? '',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(a.orderItems[index]['title'] ?? ''),
              subtitle: Text('\$ ${a.orderItems[index]['price'] ?? '0'}'),
              trailing: Text(
                'Qty: ${a.orderItems[index]['quantity'] ?? '1'}',
                style: const TextStyle(fontSize: 16),
              ),
            );
          },
        ),
      ),
    );
  }
}
