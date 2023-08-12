import 'package:challenge_two/ui/screens/splash_screen/splash_pages/first_page.dart';
import 'package:challenge_two/ui/screens/splash_screen/splash_pages/forth_page.dart';
import 'package:challenge_two/ui/screens/splash_screen/splash_pages/second_page.dart';
import 'package:challenge_two/ui/screens/splash_screen/splash_pages/third_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              FirstSplashPage(),
              SecondSplashPage(),
              ThirdSplashPage(),
              ForthSplashPage(),
            ],
          ),
          Positioned(
            top: 60,
            right: 17,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Color(0xFF6CC51D),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 148,
            left: 183,
            right: 183,
            child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: const JumpingDotEffect(
                  dotColor: Color(0xFF797171),
                  activeDotColor: Color(0xFF6CC51D),
                  dotHeight: 8.0,
                  dotWidth: 8.0,
                  spacing: 4.0,
                )),
          )
        ],
      ),
    );
  }
}
