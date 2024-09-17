import 'package:ecommerce_app/Screens/Checkout/checkout.dart';
import 'package:ecommerce_app/cartlist.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bottompromo extends StatefulWidget {
  const Bottompromo({super.key});
  @override
  State<Bottompromo> createState() => _BottompromoState();
}

class _BottompromoState extends State<Bottompromo> {
  final item = cartItems;
  @override
  Widget build(BuildContext context) {
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
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Apply',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sub-Total'),
              Text("\$ 0"),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Delivery Fee'),
              Text('\$ 0'),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Discount'),
              Text('\$ 0'),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total Cost', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('\$ 0', style: TextStyle(fontWeight: FontWeight.bold)),
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
                      builder: (context) =>
                          CheckoutScreen(orderItems: cartItems),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
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














// ListTile(
//                     leading: Container(
//                       color: Colors.amber,
//                       child: Image.asset("product image that user added to cart"),
//                     ),
//                     title: const Text(
//                       "product image title",
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     subtitle: const Text(
//                       "product image price",
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(
//                             onPressed: () {
//                               setState(() {
//                                 count--;
//                               });
//                             },
//                             icon: const Icon(CupertinoIcons.minus)),
//                         Text(
//                           '$count',
//                           style: const TextStyle(fontSize: 20),
//                         ),
//                         IconButton(
//                             onPressed: () {
//                               setState(() {
//                                 count++;
//                               });
//                             },
//                             icon: const Icon(Icons.add)),
//                       ],
//                     ),
//                     onTap: () {},
//                   ),