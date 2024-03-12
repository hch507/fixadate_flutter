
import 'package:fixadate_flutter/presentation/ui/sign_up/widget/w_checkbox.dart';
import 'package:fixadate_flutter/presentation/ui/sign_up/widget/w_drop_down_menu.dart';
import 'package:fixadate_flutter/presentation/ui/sign_up/widget/w_page_route_button.dart';
import 'package:fixadate_flutter/presentation/ui/sign_up/widget/w_register_title_text.dart';
import 'package:fixadate_flutter/presentation/ui/widget/w_preivous.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<String> professionList = ["student", "option2", "option3"];

class SecondSignUpScreen extends StatefulWidget {
  const SecondSignUpScreen({super.key});

  @override
  State<SecondSignUpScreen> createState() => _SecondSignUpScreenState();
}

class _SecondSignUpScreenState extends State<SecondSignUpScreen> {
  String dropdownValue = professionList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120),
              PreviousPageArrow(),
              RegisterTitleText(),
              CustomDropDownMenu(),
              SizedBox(height: 40),
              Row(
                children: [
                  TermsCheckBox(),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("본 이용 약관에 동의합니다."),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Get.toNamed("/signup/termsandcondition"),
                    // onTap: () => Get.toNamed("/signup2/"),
                    child: const Text(
                      "[내용보기]",
                      style: TextStyle(color: Color.fromRGBO(251, 42, 66, 1.0)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              PageRouteButton(
                text: "Next",
                backGroundColor: Color.fromRGBO(251, 42, 66, 1.0),
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed("/signup3");
                },
              ),
              PageRouteButton(
                text: "Skip",
                backGroundColor: Colors.transparent,
                textColor: Color.fromRGBO(251, 42, 66, 1.0),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
