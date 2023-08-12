import 'package:flutter/material.dart';

class ForthSplashPage extends StatefulWidget {
  const ForthSplashPage({super.key});

  @override
  State<ForthSplashPage> createState() => _ForthSplashPageState();
}

class _ForthSplashPageState extends State<ForthSplashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 430,
    height: 932,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('lib/assets/images/splash_4.png'),
          fit: BoxFit.fill,
      ),
    ),
);
  }
}