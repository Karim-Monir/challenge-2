import 'package:flutter/material.dart';

class ForthSplashPage extends StatefulWidget {
  const ForthSplashPage({super.key});

  @override
  State<ForthSplashPage> createState() => _ForthSplashPageState();
}

class _ForthSplashPageState extends State<ForthSplashPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 430,
          height: 932,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/splash_4.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Positioned(
            top: 96,
            left: 83,
            right: 83,
            child: SizedBox(
              width: 248,
              height: 78,
              child: Text(
                'Get Discounts \nOn All Products',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.30,
                  letterSpacing: 0.90,
                ),
              ),
            )),
        const Positioned(
            top: 203,
            left: 46,
            right: 46,
            child: SizedBox(
                width: 320,
                height: 90,
                child: Text('Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy',
textAlign: TextAlign.center,
style: TextStyle(
color: Color(0xFF868889),
fontSize: 15,
fontFamily: 'Poppins',
fontWeight: FontWeight.w500,
letterSpacing: 0.45,
),
) ))
      ],
    );
  }
}