import 'package:ecommerce_app/Custom%20Widgets/custombtn.dart';
import 'package:ecommerce_app/Custom%20Widgets/customlink.dart';
import 'package:ecommerce_app/Screens/Login/login_view.dart';
import 'package:ecommerce_app/Screens/onboard/onboard_view.dart';
import 'package:flutter/material.dart';

class Bottomwidget extends StatelessWidget {
  const Bottomwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 100,
      padding: const EdgeInsets.only(top: 10),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "The Fashion App That Makes You Look Your Best",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                textAlign: TextAlign.center,
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Custombtn(
                btntext: "Let's Get Started!",
                navgt: OnboardView(),
              ),
              SizedBox(
                height: 20,
              ),
              Customlink(
                quest: "Already have an account? ",
                link: "Sign In",
                navigate_To: LoginView(),
              )
            ],
          )
        ],
      ),
    );
  }
}
