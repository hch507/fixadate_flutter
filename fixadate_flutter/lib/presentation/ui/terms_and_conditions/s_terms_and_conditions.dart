import 'package:fixadate_flutter/presentation/presenter/sign_up_controller.dart';
import 'package:fixadate_flutter/presentation/ui/sign_up/widget/w_page_route_button.dart';
import 'package:fixadate_flutter/presentation/ui/terms_and_conditions/f_terms_and_conditions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  IconButton(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    onPressed: () {
                      Get.toNamed("/signup2");
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 32,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      "이용 약관",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Divider(color: Colors.grey, thickness: 1.0),
              const SizedBox(
                height: 30,
              ),
              TermsAndConditionsFragment(),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: PageRouteButton(
                  text: "동의합니다.",
                  backGroundColor: Color.fromRGBO(251, 42, 66, 1.0),
                  textColor: Colors.white,
                  onPressed: () {
                    if (SignUpController.to.isAgree.value) {
                      Get.toNamed("/signup2");
                    } else {
                      SignUpController.to.agreeTAC();
                      Get.toNamed("/signup2");
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
