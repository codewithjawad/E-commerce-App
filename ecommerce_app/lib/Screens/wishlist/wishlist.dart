import 'package:ecommerce_app/Screens/Home/home_widgets/gridview.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  // Function to remove an item from the wishlist and refresh UI
  void _removeFromWishlist(int indexx) {
    setState(() {
      if (indexx >= 0 && indexx < Gridviewwidget.wishlistItems.length) {
        Gridviewwidget.wishlistItems.remove(indexx);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Gridviewwidget.wishlistItems.isEmpty
          ? const Center(
              child: Text(
                'Your wishlist is empty!',
                style: TextStyle(fontSize: 18),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: Gridviewwidget.wishlistItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 300,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                int itemIndex = Gridviewwidget.wishlistItems[index];
                return Gridviewwidget(
                  i: itemIndex,
                  onRemove: () => _removeFromWishlist(index),
                );
              },
            ),
    );
  }
}
