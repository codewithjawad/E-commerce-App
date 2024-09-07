import 'package:ecommerce_app/Custom%20Widgets/custombtn.dart';
import 'package:ecommerce_app/Screens/Home/home_view.dart';
import 'package:flutter/material.dart';

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true, // to hide the password input
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Spacer(),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.brown,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.brown),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Custombtn(
              btntext: "Sign In",
              navgt: HomeView(),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
