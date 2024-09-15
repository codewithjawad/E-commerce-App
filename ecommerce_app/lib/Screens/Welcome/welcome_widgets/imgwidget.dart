import 'package:flutter/material.dart';

class Imgwidget extends StatelessWidget {
  const Imgwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * 0.40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset('assests/fullpic.jpg', fit: BoxFit.cover),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.50,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assests/clothdesign.jpg'),
                  radius: 70,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assests/girlshhopping.jpg'),
                  radius: 70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
