import 'package:fixadate_flutter/presenter/widget/w_login_button.dart';
import 'package:flutter/material.dart';

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
              const LoginButton(
                PlatformName: 'Sign in with Kakao',
                backGroundColor: Color.fromRGBO(255, 255, 0, 1.0),
              ),
              SizedBox(height: 20),
              const LoginButton(
                PlatformName: "Sign in with Google",
                backGroundColor: Color.fromRGBO(255, 255, 255, 1.0),
              ),
              SizedBox(height: 20),
              const LoginButton(
                PlatformName: 'Sign in with Apple',
                backGroundColor: Color.fromRGBO(255, 255, 255, 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
