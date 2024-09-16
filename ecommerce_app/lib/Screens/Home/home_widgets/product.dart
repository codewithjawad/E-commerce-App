import 'package:ecommerce_app/Screens/Home/home_widgets/category.dart';
import 'package:ecommerce_app/Screens/Home/home_widgets/gridview.dart';
import 'package:ecommerce_app/Screens/Home/home_widgets/slider.dart';
import 'package:ecommerce_app/Screens/Home/productmap.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: searchController,
                      decoration: const InputDecoration(
                        labelText: 'Search',
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipOval(
                    child: IconButton(
                      icon: const Icon(Icons.filter_list),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: const Sliderview(),
            ),
            const Category(),
            GridView.builder(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: productmap.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 300,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Gridviewwidget(
                  i: index,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
