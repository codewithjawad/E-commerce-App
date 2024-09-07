import 'package:ecommerce_app/Screens/Home/home_view.dart';
import 'package:ecommerce_app/Screens/Home/home_widgets/slider.dart';
import 'package:ecommerce_app/Screens/Splash/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.brown,
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: Colors.black,
          suffixIconColor: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
