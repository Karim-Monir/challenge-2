import 'package:challenge_two/ui/screens/login_screens/login_1.dart';
import 'package:challenge_two/ui/screens/login_screens/login_screen.dart';
import 'package:challenge_two/ui/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

