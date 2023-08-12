import 'package:flutter/material.dart';

class FirstSplashPage extends StatefulWidget {
  const FirstSplashPage({super.key});

  @override
  State<FirstSplashPage> createState() => _FirstSplashPageState();
}

class _FirstSplashPageState extends State<FirstSplashPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 655,
        height: 984,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/splash_1.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      const Positioned(
        top: 105,
        left: 111,
        right: 110,
        child: Text(
          'Welcome to',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            height: 1.30,
            letterSpacing: 0.90,
          ),
        ),
      ),
      Positioned(
          top: 145,
          right: 144,
          left: 143,
          child: Container(
            width: 127,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/bigCart.png'),
                fit: BoxFit.fill,
              ),
            ),
          )),
      const Positioned(
          top: 203,
          right: 47,
          left: 47,
          child: SizedBox(
            width: 322,
            height: 46,
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF868889),
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.45,
              ),
            ),
          ))
    ]);
  }
}
