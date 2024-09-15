import 'package:ecommerce_app/Custom%20Widgets/custombtn.dart';
import 'package:ecommerce_app/Screens/Home/home_view.dart';
import 'package:flutter/material.dart';

class PaymentMethodsScreen extends StatelessWidget {
  final String selectedPaymentMethod;

  const PaymentMethodsScreen({super.key, this.selectedPaymentMethod = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credit & Debit Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPaymentMethodTile(
              icon: const Icon(Icons.payment), // Use an appropriate icon
              title: 'card',
              value: 'Add new Card',
              selectedPaymentMethod: selectedPaymentMethod,
              onChanged: (value) {},
            ),
            const SizedBox(height: 16.0),
            const Text(
              'More Payment Methods',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            _buildPaymentMethodTile(
              icon: const Icon(Icons.payment), // Use an appropriate icon
              title: 'PayPal',
              value: 'paypal',
              selectedPaymentMethod: selectedPaymentMethod,
              onChanged: (value) {},
            ),
            _buildPaymentMethodTile(
              icon: const Icon(Icons.apple), // Use an appropriate icon
              title: 'Apple Pay',
              value: 'apple_pay',
              selectedPaymentMethod: selectedPaymentMethod,
              onChanged: (value) {},
            ),
            _buildPaymentMethodTile(
              icon: const Icon(Icons.android), // Use an appropriate icon
              title: 'Google Pay',
              value: 'google_pay',
              selectedPaymentMethod: selectedPaymentMethod,
              onChanged: (value) {},
            ),
            const Spacer(),
            const Custombtn(btntext: "Confrim Payment", navgt: HomeView())
          ],
        ),
      ),
    );
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
    );
  }
}
