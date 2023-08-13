import 'package:challenge_two/ui/screens/login_screens/login_screen.dart';
import 'package:challenge_two/ui/screens/splash_screen/splash_pages/first_page.dart';
import 'package:challenge_two/ui/screens/splash_screen/splash_pages/forth_page.dart';
import 'package:challenge_two/ui/screens/splash_screen/splash_pages/second_page.dart';
import 'package:challenge_two/ui/screens/splash_screen/splash_pages/third_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../login_screens/login_1.dart';
import '../login_screens/login_2.dart';
import '../login_screens/login_3.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;
  bool isSecondPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                isLastPage = (index == 3);
                isSecondPage = (index > 0);
              });
            },
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
            left: 17,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                isSecondPage
                    ? TextButton(
                        onPressed: () {
                          _controller.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.bounceOut);
                        },
                        child: const Text(
                          'Back',
                          style: TextStyle(
                            color: Color(0xFF797171),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
                TextButton(
                  onPressed: () {
                    if(isLastPage){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    }
                    _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.bounceIn);
                  },
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
              ],
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
