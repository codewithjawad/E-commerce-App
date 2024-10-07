import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Imgwidget extends StatelessWidget {
  String img1;
  String img2;
  String img3;
  Imgwidget(
      {super.key, required this.img1, required this.img2, required this.img3});

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
            child: Image.asset(img1, fit: BoxFit.cover),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.50,
                child: CircleAvatar(
                  backgroundImage: AssetImage(img2),
                  radius: 70,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: CircleAvatar(
                  backgroundImage: AssetImage(img3),
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
