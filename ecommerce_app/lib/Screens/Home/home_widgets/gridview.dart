import 'package:ecommerce_app/Screens/Home/productmap.dart';
import 'package:ecommerce_app/Screens/productdetails/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridviewwidget extends StatefulWidget {
  final int i; // Add index as a field
  const Gridviewwidget(
      {super.key, required this.i}); // Pass index to constructor

  @override
  State<Gridviewwidget> createState() => _GridviewwidgetState();
}

class _GridviewwidgetState extends State<Gridviewwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 233, 232, 232),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Details()),
                  );
                },
                child: Image.asset(
                  height: 170,
                  width: double.infinity,
                  productmap.elementAt(widget.i)['images'], // Use widget.index
                  fit: BoxFit.cover,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${productmap.elementAt(widget.i)['title']}", // Use widget.index
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .merge(const TextStyle(fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "${productmap.elementAt(widget.i)['price']}", // Use widget.index
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .merge(const TextStyle(
                        fontWeight: FontWeight.w700,
                      )),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => {},
                      icon: const Icon(CupertinoIcons.heart),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => "",
                          icon: const Icon(Icons.star),
                          color: Colors.amber[600],
                        ),
                        Text("${productmap.elementAt(widget.i)['rating']}")
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
