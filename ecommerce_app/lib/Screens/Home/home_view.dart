import 'package:ecommerce_app/Screens/Home/home_widgets/appbarview.dart';
import 'package:ecommerce_app/Screens/Home/home_widgets/slider.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbarview(),
      body: SizedBox(height: 500, child: const Sliderview()),
    );
  }
}
