import 'package:flutter/material.dart';

class Custombtn extends StatelessWidget {
  final String btntext;
  final Widget navgt;
  const Custombtn({super.key, required this.btntext, required this.navgt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navgt),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.brown, // Set the background color to brown
        ),
        child: Text(
          btntext,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
