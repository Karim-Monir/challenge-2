import 'package:flutter/material.dart';
Widget userInputField({
  required TextEditingController controller,
  required String? Function(String?) validate,
  required String label,
  Widget? suffix,
  required bool isPassword,
  TextInputType? type,
  String hint = '',
  double borderRadius = 0.0,
  Color? labelTextColor,
  Color? hintTextColor,
  Color? fillColor,
  Widget? prefix,

  void Function(String)? onSubmit,
  void Function(String)? onChange,
  void Function()? suffixPressed,
  void Function()? onTap,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type, //phone in case of numbers field
      obscureText: isPassword,
      onFieldSubmitted:
          onSubmit, //to catch the value after pressing the correct mark on keyboard
      onChanged: onChange, //catches the value with every single input
      validator: validate,
      onTap: onTap,
      decoration: InputDecoration(
        errorStyle: const TextStyle(fontSize: 10, textBaseline: TextBaseline.alphabetic),
        errorBorder: InputBorder.none,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        // enabledBorder: UnderlineInputBorder(
        //   borderSide: const BorderSide(color: Colors.transparent),
        //   borderRadius: BorderRadius.circular(borderRadius),
        //),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        // focusedBorder: UnderlineInputBorder(
        //   borderSide: const BorderSide(color: Colors.transparent),
        //   borderRadius: BorderRadius.circular(borderRadius)
        // ),
        label: Text(label),
        // disabledBorder: InputBorder.none,
        labelStyle: const TextStyle(
          color: Color(0xFF868889),
          fontSize: 15,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          letterSpacing: 0.45,
          ),
        prefixIcon: prefix,
        suffixIcon: suffix,
        fillColor: fillColor,
        filled: true,
        hintText: hint,
        // hintTextDirection: TextDirection.rtl,
        alignLabelWithHint: true,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        hintStyle: TextStyle(
          color: hintTextColor,
        ),
      ),
    );
