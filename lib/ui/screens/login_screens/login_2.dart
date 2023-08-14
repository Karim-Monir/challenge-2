import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'input_fields.dart';

class SecondLogin extends StatefulWidget {
  final PageController pageController;
  const SecondLogin({super.key, required this.pageController});

  @override
  State<SecondLogin> createState() => _SecondLoginState();
}

class _SecondLoginState extends State<SecondLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 537,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/lady_1.png'),
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
              height: MediaQuery.of(context).size.height * 0.53,
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
                    'Welcome back !',
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
                    'Sign in to your account',
                    style: TextStyle(
                      color: Color(0xFF868889),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.45,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                      children: [
                        userInputField(
                      type: TextInputType.emailAddress,
                      controller: emailController,
                      isPassword: false,
                      label: 'Email Address',
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please, enter your email address';
                        }
                        return null;
                      },
                      prefix: const Padding(
                        padding: EdgeInsets.only(left: 28, right: 21),
                        child: Icon(
                          CupertinoIcons.envelope,
                          color: Color(0xFF939495),
                        ),
                      ),
                      fillColor: Colors.white,
                      borderRadius: 5.0,
                                      ),
                                      
                                      const SizedBox(
                      height: 5,
                                      ),
                                      userInputField(
                      type: TextInputType.visiblePassword,
                      controller: passwordController,
                      isPassword: isObscure,
                      label: 'Password',
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      prefix: const Padding(
                        padding: EdgeInsets.only(left: 28, right: 21),
                        child: Icon(
                          CupertinoIcons.lock,
                          color: Color(0xFF939495),
                        ),
                      ),
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          icon: isObscure
                              ? const Icon(
                                  CupertinoIcons.eye,
                                  color: Color(0xFF939495),
                                )
                              : const Icon(
                                  CupertinoIcons.eye_slash,
                                  color: Colors.redAccent,
                                )),
                      fillColor: Colors.white,
                      borderRadius: 5.0,
                                      ),
                                      //const SizedBox(height: 21,),
                                      Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot password',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Color(0xFF407DC6),
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.45,
                            ),
                          ),
                        ),
                      ],
                                      ),
                                      // SizedBox(
                                      //   height: 17,
                                      // ),
                                      GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                                  //print('Login successful');
                                }
                      },
                      child: Container(
                        //padding: const EdgeInsets.only(right: 118),
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
                        child: const Center(
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                                      ),
                      ],
                                      ),
                    )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\’t have an account ?',
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
                                curve: Curves.bounceIn);
                          },
                          child: const Text(
                            'Sign Up',
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
