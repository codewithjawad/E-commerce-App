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
  int _currentIndex = 2;

  final List<Widget> _pages = [
    const Wishlist(),
    const Cart(),
    const Product(),
    const Chat(),
    const Profile(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  PreferredSizeWidget _buildCustomAppBar() {
    switch (_currentIndex) {
      case 0:
        return AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text("WishList",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
          ),
          centerTitle: true,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        );
      case 1:
        return AppBar(
          title: const Text('My Cart',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        );
      case 3:
        return AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text("Chat",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
          ),
          centerTitle: true,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        );
      case 4:
        return AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text("Profile",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
          ),
          centerTitle: true,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        );
      default:
        return const Appbarview();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 2 ? const Appbarview() : _buildCustomAppBar(),
      body: _pages[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.custom,
        color: Colors.black,
        backgroundColor: Colors.white,
        activeColor: Colors.black,
        items: const [
          TabItem(icon: CupertinoIcons.heart),
          TabItem(icon: Icons.shopping_cart_checkout),
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.chat),
          TabItem(icon: Icons.person),
        ],
        initialActiveIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
