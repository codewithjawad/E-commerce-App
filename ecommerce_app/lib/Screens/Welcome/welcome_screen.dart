import 'package:ecommerce_app/Screens/Welcome/welcome_widgets/bottomwidget.dart';
import 'package:ecommerce_app/Screens/Welcome/welcome_widgets/imgwidget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(top: 0, left: 15),
        height: MediaQuery.of(context).size.height * 100,
        width: MediaQuery.of(context).size.width * 100,
        child: const Column(
          children: [
            Imgwidget(),
            SizedBox(
              height: 20,
            ),
            Bottomwidget()
          ],
        ),
      )),
    );
  }
}
