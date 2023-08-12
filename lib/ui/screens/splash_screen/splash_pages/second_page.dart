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
const Positioned(
  top: 96,
  left: 48,
  right: 46,
  child: SizedBox(
  width: 320,
  height: 90,
  child: Text(
            'Buy Quality \nDairy Products',
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
            left: 47,
            right: 45,
            child: SizedBox(
              width: 320,
              height: 90,
              child: Text('Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy',
textAlign: TextAlign.center,
style: TextStyle(
color: Color(0xFF868889),
fontSize: 15,
fontFamily: 'Poppins',
fontWeight: FontWeight.w500,
letterSpacing: 0.45,
),
) 
            ))
      ],
    );
  }
}