import 'package:flutter/material.dart';

class FirstLogin extends StatefulWidget {
  const FirstLogin({super.key});

  @override
  State<FirstLogin> createState() => _FirstLoginState();
}

class _FirstLoginState extends State<FirstLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 638.21,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/lady.png'),
                fit: BoxFit.fill,
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
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              //alignment: AlignmentDirectional.bottomCenter,
              padding: EdgeInsets.fromLTRB(16, 31, 16, 16),
              //margin: EdgeInsets.fromLTRB(16, 31, 16, 16),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.425,
              decoration: const ShapeDecoration(
                color: Color(0xFFF4F5F9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.75,
                    ),
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy',
                    style: TextStyle(
                      color: Color(0xFF868889),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.45,
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Row(
                        children: [
                          
                          Text(
                            'Continue with google',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ) 
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account ?',
                        style: TextStyle(
                          color: Color(0xFF868889),
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.45,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.45,
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
