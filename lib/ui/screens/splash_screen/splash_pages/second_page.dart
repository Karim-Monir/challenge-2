import 'package:flutter/material.dart';

class SecondSplashPage extends StatefulWidget {
  const SecondSplashPage({super.key});

  @override
  State<SecondSplashPage> createState() => _SecondSplashPageState();
}

class _SecondSplashPageState extends State<SecondSplashPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
    width: 430,
    height: 932,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('lib/assets/images/splash_2.png'),
          fit: BoxFit.fill,
      ),
    ),
),
      ],
    );
  }
}