import 'package:fixadate_flutter/presentation/presenter/login_controller.dart';
import 'package:fixadate_flutter/presentation/ui/login/widget/w_login_button.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../sign_up/widget/w_drop_down_menu.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.5, right: 30.5, top: 125),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 150),
              Row(
                children: [
                  Text(
                    'Welcome to Fixadate',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const Text(
                    '!',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(0xFFE53A34),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Login with",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 8,
              ),
              LoginButton(
                PlatformName: 'Sign in with Kakao',
                backGroundColor: Color.fromRGBO(255, 255, 0, 1.0),
                onPressed: () {},
                // getPage: () => Get.toNamed("/signUp1" ,arguments: ["oauthId","kakao"]),
              ),
              const SizedBox(height: 20),
              LoginButton(
                PlatformName: "Sign in with Google",
                backGroundColor: Color.fromRGBO(255, 255, 255, 1.0),
                onPressed: () {
                  LoginController.to.requestGoogleLogin();
                },
                //getPage: () => Get.toNamed("/signUp1" ,arguments: ["oauthId","google"]),
              ),
              const SizedBox(height: 20),
              LoginButton(
                PlatformName: 'Sign in with Apple',
                backGroundColor: Color.fromRGBO(255, 255, 255, 1.0),
                onPressed: () {},
                //getPage: () => Get.toNamed("/signUp1" ,arguments: ["oauthId","oauthPlatform"]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
