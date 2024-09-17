import 'package:ecommerce_app/Screens/Home/home_view.dart';
import 'package:ecommerce_app/Screens/orderdetail/orderdetail.dart';
import 'package:ecommerce_app/cartlist.dart';
import 'package:flutter/material.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Methods'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline,
              size: 100,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Payment Successful',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Thank you for your purchase',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 100.0),
            ElevatedButton(
              onPressed: () {
                print(cartItems);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderDetail()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 14.0),
              ),
              child: const Text(
                'View Order',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const HomeView(),
                  ),
                  ModalRoute.withName('/'),
                );
              },
              child: const Text(
                'Back to Home',
                style: TextStyle(
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                  color: Colors.brown,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
