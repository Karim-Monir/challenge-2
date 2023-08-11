import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [],
      ),
//       body: Container(
//     width: 655,
//     height: 984,
//     decoration: BoxDecoration(
//       image: DecorationImage(
//           image: AssetImage('lib/assets/images/splash_1.png'),
//           fit: BoxFit.fill,
//       ),
//     ),
// ),
    );
  }
}