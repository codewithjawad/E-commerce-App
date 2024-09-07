import 'package:ecommerce_app/Screens/Login/login_view.dart';
import 'package:ecommerce_app/Screens/onboard/contentmodel.dart';
import 'package:flutter/material.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller, // Ensure controller is assigned
              itemCount: contents.length,
              onPageChanged: (int index) =>
                  setState(() => currentIndex = index),
              itemBuilder: (_, i) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 60),
                        height: 300,
                        child: Image.asset(contents[i].image),
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(height: 20),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          contents[i].discription,
                          textAlign: TextAlign.center,
                          style:
                              const TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, context),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            margin: const EdgeInsets.all(40),
            child: FloatingActionButton(
              foregroundColor: Colors.white,
              backgroundColor: Colors.brown,
              child: Text(
                currentIndex == contents.length - 1 ? "Continue" : "Next",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  // Navigate to Homescreen (replace with your actual screen)
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Homescreen(),
                    ),
                  );
                } else {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
