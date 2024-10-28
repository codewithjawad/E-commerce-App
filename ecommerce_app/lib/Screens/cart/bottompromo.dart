import 'package:ecommerce_app/Screens/Checkout/checkout.dart';
import 'package:ecommerce_app/cartlist.dart';
import 'package:flutter/material.dart';

class Bottompromo extends StatefulWidget {
  const Bottompromo({super.key});
  
  @override
  State<Bottompromo> createState() => _BottompromoState();
}

class _BottompromoState extends State<Bottompromo> {
  double calculateSubtotal() {
  double subtotal = 0;
  for (var item in cartItems) {
    String priceString = item['price'] ?? '0';
    // Remove any non-numeric characters before parsing
    double price = double.parse(priceString.replaceAll(RegExp(r'[^0-9.]'), ''));
    int quantity = item['quantity'] ?? 1;
    subtotal += price * quantity;
  }
  return subtotal;
}


  @override
  Widget build(BuildContext context) {
    double subtotal = calculateSubtotal();
    double deliveryFee = 5.0; // Example fixed delivery fee
    double discount = 0.0; // Assuming no discount
    double totalCost = subtotal + deliveryFee - discount;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Promo Code',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Apply', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Sub-Total'),
              Text("\$ ${subtotal.toStringAsFixed(2)}"),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Delivery Fee'),
              Text('\$ ${deliveryFee.toStringAsFixed(2)}'),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Discount'),
              Text('\$ ${discount.toStringAsFixed(2)}'),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total Cost', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('\$ ${totalCost.toStringAsFixed(2)}', style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                if (cartItems.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutScreen(orderItems: cartItems),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 2),
                      content: Text('Cart is empty!!'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Proceed To Checkout',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
