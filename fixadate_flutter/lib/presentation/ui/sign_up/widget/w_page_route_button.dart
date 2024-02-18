import 'package:flutter/material.dart';

class PageRouteButton extends StatelessWidget {
  final String text;
  final Color backGroundColor;
  final Color textColor;
  final Function() onPressed;
  PageRouteButton(
      {required this.text, required this.backGroundColor, super.key, required this.textColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor,
          minimumSize: Size(double.infinity, 56),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      child: Text(
        "${text}",
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: textColor, fontSize: 15),
      ),
    );
  }
}
