// import 'package:ecommerce_app/Screens/cart/bottompromo.dart';
import 'package:ecommerce_app/Screens/Checkout/checkout.dart';
import 'package:ecommerce_app/cartlist.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  // Add state variables for cart totals
  double subTotal = 0.0;
  double deliveryFee = 5.0; // Fixed delivery fee
  double discount = 0.0;

  @override
  void initState() {
    super.initState();
    calculateTotals();
  }

  // Calculate all totals
  void calculateTotals() {
    subTotal = 0.0;
    for (var item in cartItems) {
      // Convert price string to double, removing the '$' symbol
      double itemPrice =
          double.tryParse(item['price'].toString().replaceAll('\$', '')) ?? 0.0;
      int quantity = item['quantity'] ?? 1;
      subTotal += itemPrice * quantity;
    }
    // Recalculate total (you can add logic for dynamic delivery fee and discounts here)
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          cartItems.isEmpty
              ? const Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          size: 100,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Your cart is empty',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      final String title = item['title'] ?? 'Unknown';
                      final String price = item['price'] ?? 'N/A';
                      final String imagePath =
                          item['imagePath'] ?? 'assets/default_image.png';
                      final int quantity = item['quantity'] ?? 1;
                      return Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        onDismissed: (direction) {
                          setState(() {
                            cartItems.removeAt(index);
                            calculateTotals(); // Recalculate totals when item is removed
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                duration: Duration(seconds: 2),
                                content: Text('Item removed from cart')),
                          );
                        },
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                        child: cartItem(
                          title: title,
                          price: price,
                          imagePath: imagePath,
                          quantity: quantity,
                          onQuantityChanged: (newQuantity) {
                            setState(() {
                              cartItems[index]['quantity'] = newQuantity;
                              calculateTotals(); // Recalculate totals when quantity changes
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CartSummary(
                subTotal: subTotal,
                deliveryFee: deliveryFee,
                discount: discount,
                onApplyPromo: (promoCode) {
                  // Add promotion logic here
                  setState(() {
                    // Example: if promo code is "SAVE10", apply 10% discount
                    if (promoCode == "SAVE10") {
                      discount = subTotal * 0.1;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            duration: Duration(seconds: 2),
                            content: Text('Invalid Promo Code')),
                      );
                    }
                  });
                },
                cartItems: cartItems,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// New CartSummary widget to replace Bottompromo
class CartSummary extends StatefulWidget {
  final double subTotal;
  final double deliveryFee;
  final double discount;
  final Function(String) onApplyPromo;
  final List<Map<String, dynamic>> cartItems;

  const CartSummary({
    super.key,
    required this.subTotal,
    required this.deliveryFee,
    required this.discount,
    required this.onApplyPromo,
    required this.cartItems,
  });

  @override
  State<CartSummary> createState() => _CartSummaryState();
}

class _CartSummaryState extends State<CartSummary> {
  final TextEditingController _promoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double totalCost = widget.subTotal + widget.deliveryFee - widget.discount;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: TextField(
                  controller: _promoController,
                  decoration: const InputDecoration(
                    hintText: 'Promo Code',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  if (_promoController.text.trim().isEmpty) {
                    // Show error message if promo field is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter a promo code'),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.red,
                      ),
                    );
                  } else {
                    // Apply the promo code and show success message
                    widget.onApplyPromo(_promoController.text.trim());
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Promo code applied successfully'),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.green,
                      ),
                    );
                    // Clear the text field after applying
                    _promoController.clear();
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Apply',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Sub-Total'),
            Text("\$ ${widget.subTotal.toStringAsFixed(2)}"),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Delivery Fee'),
            Text('\$ ${widget.deliveryFee.toStringAsFixed(2)}'),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Discount'),
            Text('\$ ${widget.discount.toStringAsFixed(2)}'),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Total Cost',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              '\$ ${totalCost.toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            onPressed: () {
              if (widget.cartItems.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CheckoutScreen(orderItems: widget.cartItems),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    duration: Duration(seconds: 2),
                    content: Text('Cart is empty!!'),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Proceed To Checkout',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}

Widget cartItem({
  required String title,
  required String price,
  required String imagePath,
  required int quantity,
  required Function(int) onQuantityChanged,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
    child: Row(
      children: [
        // Image
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(price, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                if (quantity > 1) {
                  onQuantityChanged(quantity - 1);
                }
              },
              icon: const Icon(Icons.remove_circle_outline),
            ),
            Text('$quantity'),
            IconButton(
              onPressed: () {
                onQuantityChanged(quantity + 1);
              },
              icon: const Icon(Icons.add_circle_outline),
            ),
          ],
        ),
      ],
    ),
  );
}
