import 'package:fixadate_flutter/presentation/presenter/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final Widget? suffixIcon;
  final validator;

  const RegisterTextFormField({
    required this.textEditingController,
    required this.hintText,
    required this.validator,
    this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      validator: validator,
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
          suffixIcon: suffixIcon),
      style:
          Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black),
    );
  }
}
