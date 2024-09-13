import 'package:ecommerce_app/Screens/cart/cart.dart';
import 'package:flutter/material.dart';

class Appbarview extends StatelessWidget implements PreferredSizeWidget {
  const Appbarview({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          const Text("Hi Jawwad!", style: TextStyle(color: Colors.black)),
          const Spacer(),
          ClipOval(
            child: IconButton(
              icon: const Icon(Icons.shopping_cart_checkout),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cart()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
