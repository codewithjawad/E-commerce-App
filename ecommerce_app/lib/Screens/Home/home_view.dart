import 'package:ecommerce_app/Screens/Home/home_widgets/appbarview.dart';
import 'package:ecommerce_app/Screens/Home/home_widgets/product.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Appbarview(),
      body: Product(),
    );
  }
}
