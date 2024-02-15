import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String PlatformName;
  final Color backGroundColor;
  const LoginButton({required this.PlatformName,required this.backGroundColor ,super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
          )
      ),
      child:Text(
        PlatformName,
        style: TextStyle(
            color: Colors.black,
            fontSize: 16
        ),
      ),
    );
  }
}
