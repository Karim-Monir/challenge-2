import 'package:challenge_two/ui/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'login_1.dart';
import 'login_2.dart';
import 'login_3.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final PageController _loginController = PageController();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _loginController,
          onPageChanged: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          physics: const NeverScrollableScrollPhysics(),
          children: [
            FirstLogin(pageController: _loginController,),
            SecondLogin(pageController: _loginController,),
            ThirdLogin(pageController: _loginController,),
          ],
        ),
        Positioned(
            top: 63,
            // left: 163,
            // right: 161,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                    onPressed: () {
                      if (pageIndex == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SplashScreen()),
                        );
                      } else if(pageIndex == 1 || pageIndex == 2){
                        _loginController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      }
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                const SizedBox(
                  width: 123,
                ),
                Center(
                  child: pageIndex == 0
                      ? const Text(
                          'Welcome',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.54,
                          ),
                        )
                      : pageIndex == 1
                          ? const Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.54,
                              ),
                            )
                          : const Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.54,
                              ),
                            ),
                ),
              ],
            )),
      ]),
    );
  }
}
