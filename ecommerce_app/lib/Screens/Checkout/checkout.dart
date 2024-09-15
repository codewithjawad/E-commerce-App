import 'package:ecommerce_app/Custom%20Widgets/custombtn.dart';
import 'package:ecommerce_app/Screens/Checkout/order.dart';
import 'package:ecommerce_app/Screens/Home/home_view.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  final List<Map<String, dynamic>> orderItems;

  // Constructor to receive the orderItems data
  const CheckoutScreen({super.key, required this.orderItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('Checkout'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Shipping Address
            const Text('Shipping Address',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                const Icon(Icons.location_on),
                const Text('Home'),
                const Spacer(),
                TextButton(
                  child: const Text('CHANGE'),
                  onPressed: () {
                    // Handle change shipping address logic
                  },
                ),
              ],
            ),
            const Text('gulshan block 19 Karachi'),

            // Shipping Type
            const SizedBox(height: 16.0),
            const Text('Choose Shipping Type',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                const Icon(Icons.delivery_dining),
                const Text('Economy'),
                const Spacer(),
                TextButton(
                  child: const Text('CHANGE'),
                  onPressed: () {
                    // Handle change shipping type logic
                  },
                ),
              ],
            ),
            const Text('Estimate delivery time 5 to 7 days'),

            // Order List
            const SizedBox(height: 16.0),
            const Text('Order List',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Expanded(
                child: Order(
              items: orderItems,
            )),

            // Continue to Payment Button
            const SizedBox(height: 16.0),
            const Custombtn(
              btntext: "Continue to Payment",
              navgt: HomeView(),
            ),
          ],
        ),
      ),
    );
  }
}