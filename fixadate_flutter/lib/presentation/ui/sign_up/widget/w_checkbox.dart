import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../presenter/sign_up_controller.dart';

class TermsCheckBox extends StatelessWidget {
  const TermsCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          color: SignUpController.to.isAgree.value ? Color.fromRGBO(251, 42, 66, 1.0) : Colors.white,
        ),
        padding: EdgeInsets.all(3),
        child: Icon(
          Icons.check,
          size: 10,
        ),
      ),
    );
  }
}
