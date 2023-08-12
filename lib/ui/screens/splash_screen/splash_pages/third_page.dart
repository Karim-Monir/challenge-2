import 'package:flutter/material.dart';

class ThirdSplashPage extends StatefulWidget {
  const ThirdSplashPage({super.key});

  @override
  State<ThirdSplashPage> createState() => _ThirdSplashPageState();
}

class _ThirdSplashPageState extends State<ThirdSplashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 430,
    height: 932,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('lib/assets/images/splash_3.png'),
          fit: BoxFit.fill,
      ),
    ),
);
  }
}