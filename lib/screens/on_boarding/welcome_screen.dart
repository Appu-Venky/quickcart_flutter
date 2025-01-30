import 'package:flutter/material.dart';
import 'package:quickcart/constants.dart';
import 'package:quickcart/screens/on_boarding/logIn_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreensState createState() => _WelcomeScreensState();
}

class _WelcomeScreensState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> welcomeData = [
    {
      "image": "assets/images/welcome.jpg",
      "title": "Welcome to QuickCart",
      "description":
          "Shop from the comfort of your home and get products delivered to your doorstep.",
    },
    {
      "image": "assets/images/welcome1.jpg",
      "title": "Wide Range of Products",
      "description":
          "Find everything you need, from groceries to electronics, all in one place.",
    },
    {
      "image": "assets/images/welcome2.jpg",
      "title": "Fast and Secure Checkout",
      "description":
          "Experience a seamless checkout process with multiple payment options.",
    },
  ];

  void _goToHomeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: welcomeData.length,
              itemBuilder: (context, index) => WelcomeContent(
                image: welcomeData[index]["image"]!,
                title: welcomeData[index]["title"]!,
                description: welcomeData[index]["description"]!,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    welcomeData.length,
                    (index) => buildDot(index),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _currentPage == welcomeData.length - 1
                      ? _goToHomeScreen
                      : () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kthemecolor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                  ),
                  child: Text(
                    _currentPage == welcomeData.length - 1
                        ? "Get Started"
                        : "Next",
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      width: _currentPage == index ? 20 : 10,
      decoration: BoxDecoration(
        color: _currentPage == index ? kthemecolor : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class WelcomeContent extends StatelessWidget {
  final String image, title, description;

  const WelcomeContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image,
            height: 400, width: double.infinity, fit: BoxFit.fill),
        const SizedBox(height: 20),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
