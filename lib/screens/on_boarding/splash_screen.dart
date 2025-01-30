import 'package:flutter/material.dart';
import 'package:quickcart/constants.dart';
import 'package:quickcart/screens/dashboard/bottom_nav/bottom_nav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));

    _goToWellcomeScreen();
  }

  void _goToWellcomeScreen() async {
    // final prefs = await SharedPreferences.getInstance();

    // String? userName = prefs.getString('userName');

    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavScreen()),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FadeTransition(
              opacity: _animation,
              child: Image.asset(
                'assets/images/splashLogo.png',
                width: 100,
                height: 100,
                color: kthemecolor,
              ),
            ),
            const SizedBox(width: 1),
            const Text(
              'uickCart',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: kthemecolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
