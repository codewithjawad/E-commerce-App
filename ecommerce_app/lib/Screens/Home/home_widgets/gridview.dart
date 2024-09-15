import 'package:ecommerce_app/Screens/Home/productmap.dart';
import 'package:ecommerce_app/Screens/productdetails/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridviewwidget extends StatefulWidget {
  final int i;
  final VoidCallback? onRemove; // Callback for removing from wishlist

  static List<int> wishlistItems = []; // Track wishlist items

  const Gridviewwidget({super.key, required this.i, this.onRemove});

  @override
  State<Gridviewwidget> createState() => _GridviewwidgetState();
}

class _GridviewwidgetState extends State<Gridviewwidget> {
  bool isInWishlist = false;

  @override
  void initState() {
    super.initState();
    isInWishlist = Gridviewwidget.wishlistItems.contains(widget.i);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 233, 232, 232),
        borderRadius: BorderRadius.circular(20),
      ),
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
                  MaterialPageRoute(
                    builder: (context) => Details(
                      imgpath: "${productmap.elementAt(widget.i)['images']}",
                      imgtitle: "${productmap.elementAt(widget.i)['title']}",
                      price: "${productmap.elementAt(widget.i)['price']}",
                      rating: "${productmap.elementAt(widget.i)['rating']}",
                    ),
                  ),
                );
              },
              child: Image.asset(
                height: 170,
                width: double.infinity,
                productmap.elementAt(widget.i)['images'], // Use widget.i
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${productmap.elementAt(widget.i)['title']}",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .merge(const TextStyle(fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "${productmap.elementAt(widget.i)['price']}",
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
                    // Heart Icon to add/remove from wishlist
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (isInWishlist) {
                            Gridviewwidget.wishlistItems.remove(widget.i);
                            widget.onRemove?.call();
                          } else {
                            Gridviewwidget.wishlistItems.add(widget.i);
                          }
                          isInWishlist = !isInWishlist;
                        });
                      },
                      icon: Icon(
                        isInWishlist
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart,
                        color: isInWishlist ? Colors.red : Colors.black,
                      ),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
