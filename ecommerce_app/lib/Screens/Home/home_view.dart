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
    //final TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Row(
          children: [
            Text("Hi!"),
            Spacer(),
            ClipOval(
              child: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
      body: Container(height: 500, child: const Sliderview()),
    );
  }
}
