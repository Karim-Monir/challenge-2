import 'package:challenge_two/ui/screens/login_screens/login_2.dart';
import 'package:flutter/material.dart';

class FirstLogin extends StatefulWidget {
  final PageController pageController;
  const FirstLogin({super.key, required this.pageController});

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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              //alignment: AlignmentDirectional.bottomCenter,
              padding: const EdgeInsets.fromLTRB(16, 31, 16, 16),
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
                      padding: const EdgeInsets.only(right: 109),
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('lib/assets/images/google.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          const Center(
                            child: Text(
                              'Continue with google',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
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
                    padding: const EdgeInsets.only(right: 118),
                    // padding: const EdgeInsets.fromLTRB(33, 17, 0, 17),
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: ShapeDecoration(
                      shadows: const [
                        BoxShadow(
                            color: Color(0xFFC8E5B5),
                            blurRadius: 5,
                            spreadRadius: 3,
                            offset: Offset(0, 5))
                      ],
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF9FD86D),
                          Color(0xFF5DBE19),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 26,
                          width: 26,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/assets/images/Vector.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 61,
                        ),
                        const Center(
                          child: Text(
                            'Create an account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
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
                          onPressed: () {
                            widget.pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
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
