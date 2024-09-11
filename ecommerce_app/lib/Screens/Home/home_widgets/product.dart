import 'package:ecommerce_app/Screens/Home/home_widgets/category.dart';
import 'package:ecommerce_app/Screens/Home/home_widgets/slider.dart';
import 'package:ecommerce_app/Screens/Home/productmap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  mainAxisSpacing: 10),
              itemBuilder: (BuildContext context, int index) {
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
                        child: Image.asset(
                          height: 170,
                          width: double.infinity,
                          productmap.elementAt(index)['images'],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(06),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${productmap.elementAt(index)['title']}",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .merge(const TextStyle(
                                      fontWeight: FontWeight.w700)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${productmap.elementAt(index)['price']}",
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
                                  onPressed: () => "",
                                  icon: const Icon(CupertinoIcons.heart),
                                ),
                                IconButton(
                                  onPressed: () => "",
                                  icon: const Icon(Icons.shopping_cart_rounded),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.custom,
        color: Colors.black,
        backgroundColor: Colors.white,
        activeColor: Colors.black,
        items: const [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.shopify),
          TabItem(icon: CupertinoIcons.heart),
          TabItem(icon: Icons.chat),
          TabItem(icon: Icons.person),
        ],
        initialActiveIndex: 1,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
