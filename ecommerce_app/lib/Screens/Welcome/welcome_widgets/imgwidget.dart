import 'package:flutter/material.dart';

class Imgwidget extends StatelessWidget {
  final String fullPic;
  final String clothDesign;
  final String girlShopping;

  const Imgwidget({
    super.key,
    required this.fullPic,
    required this.clothDesign,
    required this.girlShopping,
  });

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
            child: Image.asset(fullPic, fit: BoxFit.cover),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.50,
                child: CircleAvatar(
                  backgroundImage: AssetImage(clothDesign),
                  radius: 70,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: CircleAvatar(
                  backgroundImage: AssetImage(girlShopping),
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
