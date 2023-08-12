import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 957.20,
            height: 638.21,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/lady.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            top: 538,
            child: Container(
            width: MediaQuery.of(context).size.width,
            height: 358,
            decoration: const ShapeDecoration(
              color: Color(0xFFF4F5F9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          ),
          const Positioned(
            top: 63,
            left: 163,
            right: 161,
            child: Text(
            'Welcome',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              letterSpacing: 0.54,
            ),
          )) 
        ],
      ),
    );
  }
}