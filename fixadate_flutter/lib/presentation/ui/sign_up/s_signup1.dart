import 'package:fixadate_flutter/presentation/ui/sign_up/widget/w_register_textformfield.dart';
import 'package:flutter/material.dart';

class FirstSignUpScreen extends StatefulWidget {
  const FirstSignUpScreen({super.key});

  @override
  State<FirstSignUpScreen> createState() => _FirstSignUpScreenState();
}

class _FirstSignUpScreenState extends State<FirstSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.5),
          child: Column(
            children: [
              SizedBox(
                height: 125,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text("Register",
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
              RegisterTextFormField(
                hintText: "닉네임을 입력해 주세요.",
                suffixIcon: IconButton(
                  onPressed: () {
                    // _putRandNick();
                  },
                  icon: const Text(
                    '\u{1F3B2}', // Unicode for the dice emoji
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RegisterTextFormField(hintText: "이름을 입력해 주세요."),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 56),
                  backgroundColor: const Color.fromRGBO(251, 42, 66, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Next',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.white, fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
