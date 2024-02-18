import 'package:flutter/material.dart';

class RegisterTitleText extends StatelessWidget {
  const RegisterTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Text("Register",
          style: Theme.of(context).textTheme.headlineLarge),
    );
  }
}
