import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PreviousPageArrow extends StatelessWidget {
  const PreviousPageArrow({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child:
          Container(
            height: 32,
            child: Image.asset('assets/Arrow.png'),
          )

      );

  }
}

