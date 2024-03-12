import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdSignUpScreen extends StatefulWidget {
  const ThirdSignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ThirdSignUpScreenState();


}

class _ThirdSignUpScreenState extends State<ThirdSignUpScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.5),
          child: Text("PAGE3"),
        ),
      ),
    );
  }

}