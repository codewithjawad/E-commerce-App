import 'package:flutter/material.dart';

class Imgwidget extends StatelessWidget {
  const Imgwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 320,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(100), // Set the desired border radius
          ),
          clipBehavior: Clip
              .antiAlias, // Ensure the child is clipped to the rounded shape
          child: Image.asset('assests/fullpic.jpg', fit: BoxFit.cover),
        ),
        Column(
          children: [
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.45,
              // Ensure the child is clipped to the rounded shape
              child: const CircleAvatar(
                backgroundImage: AssetImage('assests/clothdesign.jpg'),
                radius: 50, // You can adjust the radius as needed
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.5,
              // Ensure the child is clipped to the rounded shape
              child: const CircleAvatar(
                backgroundImage: AssetImage('assests/girlshhopping.jpg'),
                radius: 50, // You can adjust the radius as needed
              ),
            ),
          ],
        ),
      ],
    );
  }
}
