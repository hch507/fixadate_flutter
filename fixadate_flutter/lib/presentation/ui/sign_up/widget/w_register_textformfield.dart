import 'package:flutter/material.dart';

class RegisterTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  const RegisterTextFormField({required this.hintText,this.suffixIcon,super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: "${hintText}",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: suffixIcon
      ),
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: Colors.black),
    );
  }
}
