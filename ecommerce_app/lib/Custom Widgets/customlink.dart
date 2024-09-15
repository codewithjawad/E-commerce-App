import 'package:flutter/material.dart';

class Customlink extends StatelessWidget {
  final String quest;
  final String link;
  final navigate_To;
  const Customlink(
      {super.key,
      required this.quest,
      required this.link,
      required this.navigate_To});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          quest,
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => navigate_To),
            );
          },
          child: Text(
            link,
            style: const TextStyle(
                color: Colors.brown,
                decoration: TextDecoration.underline,
                decorationColor: Colors.brown),
          ),
        )
      ],
    );
  }
}
