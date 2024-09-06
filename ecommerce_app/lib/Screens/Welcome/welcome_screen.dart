import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      20), // Set the desired border radius
                ),
                clipBehavior: Clip
                    .antiAlias, // Ensure the child is clipped to the rounded shape
                child: Image.asset('assests/fullpic.jpg', fit: BoxFit.cover),
              ),
              Column(
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          20), // Set the desired border radius
                    ),
                    clipBehavior: Clip
                        .antiAlias, // Ensure the child is clipped to the rounded shape
                    child: Image.asset('assests/clothdesign.jpg',
                        fit: BoxFit.cover),
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          70), // Set the desired border radius
                    ),
                    clipBehavior: Clip
                        .antiAlias, // Ensure the child is clipped to the rounded shape
                    child: Image.asset('assests/girlshhopping.jpg',
                        fit: BoxFit.cover),
                  ),
                ],
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.brown,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.brown),
              ),
            ],
          )
        ],
      ),
    );
  }
}
