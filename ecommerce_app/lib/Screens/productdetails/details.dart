import 'package:ecommerce_app/cartlist.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String imgpath;
  final String imgtitle;
  final String rating;
  final String price;
  const Details(
      {super.key,
      required this.imgpath,
      required this.imgtitle,
      required this.price,
      required this.rating});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // Size and color selections
  String selectedSize = 'M';
  Color selectedColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Details',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imgpath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    widget.imgtitle,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[600],
                  ),
                  Text(
                    widget.rating,
                    style: const TextStyle(fontSize: 16),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Shirts',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Morbi iaculis velit quis quam vehicula, sit amet vehicula velit tempus. Integer metus sem, scelerisque cursus cursus vel, malesuada sit amet ante. Pellentesque gravida purus orci.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Select Size',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: ['S', 'M', 'L', 'XL'].map((size) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSize = size;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: selectedSize == size
                                ? Colors.brown
                                : Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        size,
                        style: TextStyle(
                          fontSize: 16,
                          color: selectedSize == size
                              ? Colors.brown
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text(
                'Select Color',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Colors.black,
                  Colors.brown,
                  Colors.blue,
                ].map((color) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = color;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                        border: Border.all(
                          color: selectedColor == color
                              ? Colors.black
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      width: 40,
                      height: 40,
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price: ${widget.price}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Add item to cart
                      setState(() {
                        cartItems.add({
                          'title': widget.imgtitle,
                          'price': widget.price,
                          'imagePath': widget.imgpath,
                        });
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Added to Cart')),
                      );
                    },
                    child: const Text(
                      'Add To Cart',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
