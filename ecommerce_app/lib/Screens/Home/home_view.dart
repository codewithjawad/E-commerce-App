import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:ecommerce_app/Screens/Home/home_widgets/appbarview.dart';
import 'package:ecommerce_app/Screens/Home/home_widgets/product.dart';
import 'package:ecommerce_app/Screens/cart/cart.dart';
import 'package:ecommerce_app/Screens/chat/chat.dart';
import 'package:ecommerce_app/Screens/profile/profile.dart';
import 'package:ecommerce_app/Screens/wishlist/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Product(),
    const Cart(),
    const Wishlist(),
    const Chat(),
    const Profile(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbarview(),
      body: _pages[_currentIndex], 
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.custom,
        color: Colors.black,
        backgroundColor: Colors.white,
        activeColor: Colors.black,
        items: const [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.shopping_cart_checkout),
          TabItem(icon: CupertinoIcons.heart),
          TabItem(icon: Icons.chat),
          TabItem(icon: Icons.person),
        ],
        initialActiveIndex: _currentIndex, // Set initial active index
        onTap: _onTabTapped, // Call this method when a tab is tapped
      ),
    );
  }
}
