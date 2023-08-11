import 'package:flutter/material.dart';

class FirstSplashPage extends StatefulWidget {
  const FirstSplashPage({super.key});

  @override
  State<FirstSplashPage> createState() => _FirstSplashPageState();
}

class _FirstSplashPageState extends State<FirstSplashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 655,
    height: 984,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('lib/assets/images/splash_1.png'),
          fit: BoxFit.fill,
      ),
    ),
);
  }
}