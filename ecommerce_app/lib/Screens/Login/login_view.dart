import 'package:ecommerce_app/Custom%20Widgets/customlink.dart';
import 'package:ecommerce_app/Screens/Login/Login_widgets/loginform.dart';
import 'package:ecommerce_app/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _HomescreenState();
}

class _HomescreenState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 120),
          child: const Column(
            children: [
              Text(
                'Sign In',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                "Hi! Welcome back, you've been missed",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(child: Loginform()),
              Text(
                "or sign in with",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.apple_rounded),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.facebook_rounded),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Customlink(quest: "Don't have an account?", link: "Sign Up",navigate_To: WelcomeScreen(),)
            ],
          ),
        ),
      ),
    );
  }
}
