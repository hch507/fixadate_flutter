import 'package:flutter/material.dart';

class LoginErrorScreen extends StatelessWidget {
  const LoginErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: const Text(
            "An Error occured while loggin in. return to home",
          ),
        ),
      ),
    );
  }
}
