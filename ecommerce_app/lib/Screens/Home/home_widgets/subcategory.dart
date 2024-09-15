import 'package:flutter/material.dart';

class Subcategory extends StatefulWidget {
  const Subcategory({super.key});

  @override
  State<Subcategory> createState() => _SubcategoryState();
}

class _SubcategoryState extends State<Subcategory> {
  int selectedButtonIndex = 0; // Initially, no button is selected

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // All button
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  selectedButtonIndex == 0 ? Colors.brown : Colors.grey[300],
                ),
              ),
              onPressed: () {
                setState(() {
                  selectedButtonIndex = 0;
                });
              },
              child: Text(
                "All",
                style: TextStyle(
                  color: selectedButtonIndex == 0 ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            // Newest button
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  selectedButtonIndex == 1 ? Colors.brown : Colors.grey[300],
                ),
              ),
              onPressed: () {
                setState(() {
                  selectedButtonIndex = 1; // "Newest" button selected
                });
              },
              child: Text(
                "Newest",
                style: TextStyle(
                  color: selectedButtonIndex == 1 ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            // Popular button
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  selectedButtonIndex == 2 ? Colors.brown : Colors.grey[300],
                ),
              ),
              onPressed: () {
                setState(() {
                  selectedButtonIndex = 2; // "Popular" button selected
                });
              },
              child: Text(
                "Popular",
                style: TextStyle(
                  color: selectedButtonIndex == 2 ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            // Men button
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  selectedButtonIndex == 3 ? Colors.brown : Colors.grey[300],
                ),
              ),
              onPressed: () {
                setState(() {
                  selectedButtonIndex = 3; // "Men" button selected
                });
              },
              child: Text(
                "Men",
                style: TextStyle(
                  color: selectedButtonIndex == 3 ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            // Women button
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  selectedButtonIndex == 4 ? Colors.brown : Colors.grey[300],
                ),
              ),
              onPressed: () {
                setState(() {
                  selectedButtonIndex = 4; // "Women" button selected
                });
              },
              child: Text(
                "Women",
                style: TextStyle(
                  color: selectedButtonIndex == 4 ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            // Winter button
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  selectedButtonIndex == 5 ? Colors.brown : Colors.grey[300],
                ),
              ),
              onPressed: () {
                setState(() {
                  selectedButtonIndex = 5; // "Winter" button selected
                });
              },
              child: Text(
                "Winter",
                style: TextStyle(
                  color: selectedButtonIndex == 5 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
