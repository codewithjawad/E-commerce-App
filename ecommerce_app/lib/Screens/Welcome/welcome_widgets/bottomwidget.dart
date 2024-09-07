import 'package:ecommerce_app/Custom%20Widgets/custombtn.dart';
import 'package:ecommerce_app/Custom%20Widgets/customlink.dart';
import 'package:ecommerce_app/Screens/Login/login_view.dart';
import 'package:flutter/material.dart';

class Bottomwidget extends StatelessWidget {
  const Bottomwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 10),
      child: const Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "The Fashion App That ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Makes You Look Your Best",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                "adipiscing elit, sed do eiusmod tempor incididunt",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Custombtn(
                btntext: "Let's Get Started!",
                navgt: Homescreen(),
              ),
              SizedBox(
                height: 15,
              ),
              Customlink(quest: "Already have an account? ", link: "Sign In")
            ],
          )
        ],
      ),
    );
  }
}
