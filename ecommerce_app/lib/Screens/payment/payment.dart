import 'package:ecommerce_app/Screens/orderdetail/vieworder.dart';
import 'package:flutter/material.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  _PaymentMethodsScreenState createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  late String selectedPaymentMethod;

  @override
  void initState() {
    super.initState();
    selectedPaymentMethod = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credit & Debit Card'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPaymentMethodTile(
              icon: const Icon(Icons.payment),
              title: 'Card',
              value: 'card',
              selectedPaymentMethod: selectedPaymentMethod,
              onChanged: _onPaymentMethodChanged,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'More Payment Methods',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            _buildPaymentMethodTile(
              icon: const Icon(Icons.payment),
              title: 'PayPal',
              value: 'paypal',
              selectedPaymentMethod: selectedPaymentMethod,
              onChanged: _onPaymentMethodChanged,
            ),
            _buildPaymentMethodTile(
              icon: const Icon(Icons.apple),
              title: 'Apple Pay',
              value: 'apple_pay',
              selectedPaymentMethod: selectedPaymentMethod,
              onChanged: _onPaymentMethodChanged,
            ),
            _buildPaymentMethodTile(
              icon: const Icon(Icons.android),
              title: 'Google Pay',
              value: 'google_pay',
              selectedPaymentMethod: selectedPaymentMethod,
              onChanged: _onPaymentMethodChanged,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const PaymentSuccessfulScreen(),
                  ),
                  ModalRoute.withName('/'),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 14.0),
              ),
              child: const Center(
                child: Text(
                  'Confirm Payment',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPaymentMethodChanged(String? value) {
    setState(() {
      selectedPaymentMethod = value!;
    });
  }

  Widget _buildPaymentMethodTile({
    required Icon icon,
    required String title,
    required String value,
    required String selectedPaymentMethod,
    required ValueChanged<String?> onChanged,
  }) {
    return ListTile(
      leading: icon,
      title: Text(title),
      trailing: Radio<String>(
        value: value,
        groupValue: selectedPaymentMethod,
        onChanged: onChanged,
      ),
      onTap: () {
        onChanged(value);
      },
    );
  }
}
