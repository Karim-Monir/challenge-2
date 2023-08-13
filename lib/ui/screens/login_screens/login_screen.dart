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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          FirstLogin(),
          SecondLogin(),
          ThirdLogin(),
        ],
      ),
    );
  }
}