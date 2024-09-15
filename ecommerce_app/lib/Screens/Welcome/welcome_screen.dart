import 'package:ecommerce_app/Screens/Welcome/welcome_widgets/bottomwidget.dart';
import 'package:ecommerce_app/Screens/Welcome/welcome_widgets/imgwidget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final String fullPi;
  final String clothDesign;
  final String girlShopping;

  const WelcomeScreen({
    super.key,
    required this.fullPi,
    required this.clothDesign,
    required this.girlShopping,
  });

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
                fullPic: fullPi,
                clothDesign: clothDesign,
                girlShopping: girlShopping,
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
