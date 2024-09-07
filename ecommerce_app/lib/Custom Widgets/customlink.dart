import 'package:flutter/material.dart';

class Customlink extends StatelessWidget {
  final String quest;
  final String link;
  const Customlink({super.key, required this.quest, required this.link});

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
        Text(
          link,
          style: const TextStyle(
              color: Colors.brown,
              decoration: TextDecoration.underline,
              decorationColor: Colors.brown),
        ),
      ],
    );
  }
}
