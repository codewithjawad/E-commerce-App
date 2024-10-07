import 'package:ecommerce_app/Screens/Welcome/welcome_widgets/bottomwidget.dart';
import 'package:ecommerce_app/Screens/Welcome/welcome_widgets/imgwidget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late String img1;
  late String img2;
  late String img3;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    img1 = 'assests/fullpic.jpg';
    img2 = 'assests/clothdesign.jpg';
    img3 = 'assests/girlshhopping.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 0, left: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Imgwidget(
                img1: img1,
                img2: img2,
                img3: img3,
              ),
              const SizedBox(
                height: 10,
              ),
              const Bottomwidget(),
            ],
          ),
        ),
      ),
    );
  }
}
