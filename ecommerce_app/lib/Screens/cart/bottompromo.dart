import 'package:flutter/material.dart';

class Bottompromo extends StatefulWidget {
  const Bottompromo({super.key});

  @override
  State<Bottompromo> createState() => _BottompromoState();
}

class _BottompromoState extends State<Bottompromo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Promo Code',
                    ),
                  ),
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
          // Price Summary
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sub-Total'),
              Text('\$ 0'),
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
          // Checkout Button
          Center(
            child: ElevatedButton(
              onPressed: () {},
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