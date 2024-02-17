import 'package:fixadate_flutter/config/validator/validator.dart';
import 'package:fixadate_flutter/presentation/presenter/sign_up_controller.dart';
import 'package:fixadate_flutter/presentation/ui/sign_up/widget/w_register_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'infoinput1_page.dart';

class FirstSignUpScreen extends StatefulWidget {
  const FirstSignUpScreen({super.key});
  @override
  State<FirstSignUpScreen> createState() => _FirstSignUpScreenState();
}

class _FirstSignUpScreenState extends State<FirstSignUpScreen> {
  TextEditingController nickTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isMalePressed = true;
  bool _isFemalePressed = false;
  String _gender = '';

  @override
  void initState() {
    super.initState();
    SignUpController.to.oauthId = Get.arguments[0];
    SignUpController.to.oauthPlatform = Get.arguments[1];

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.5),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 125,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text("Register",
                      style: Theme.of(context).textTheme.headlineLarge),
                ),
                RegisterTextFormField(
                  hintText: "닉네임을 입력해 주세요.",
                  suffixIcon: IconButton(
                    onPressed: () async {
                      await SignUpController.to.RandomNick();
                      nickTextEditingController.text = SignUpController.to.randomNick.value ?? "";
                    },
                    icon: const Text(
                      '\u{1F3B2}', // Unicode for the dice emoji
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  textEditingController: nickTextEditingController,
                  validator: validate(),
                ),
                SizedBox(
                  height: 20,
                ),
                RegisterTextFormField(
                  hintText: "이름을 입력해 주세요.",
                  textEditingController: nameTextEditingController,
                  validator: validate(),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //MALE BUTTON
                    Expanded(
                        flex: 41,
                        child: Container(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                // Toggle the state of the button
                                _isMalePressed = true;
                                _isFemalePressed = false;
                              });
                            },
                            style: _isMalePressed
                                ? ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(251, 42, 66, 1.0),
                                    // Change color when pressed
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)))
                                : ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                            child: Text(
                              'Male',
                              style: _isMalePressed
                                  ? Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          color: Colors.white,
                                          fontSize: 15,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.white)
                                  : Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          color: Colors.black, fontSize: 15),
                            ),
                          ),
                        )),

                    const Expanded(
                      child: SizedBox(width: 25),
                      flex: 8,
                    ),

                    //FEMALE BUTTON
                    Expanded(
                        flex: 41,
                        child: Container(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isFemalePressed = true;
                                _isMalePressed = false;
                              });
                            },
                            style: _isFemalePressed
                                ? ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(251, 42, 66, 1.0),
                                    // Change color when pressed
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)))
                                : ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                            child: Text(
                              'Female',
                              style: _isFemalePressed
                                  ? Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          color: Colors.white,
                                          fontSize: 15,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.white)
                                  : Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (_isFemalePressed) {
                        _gender = "Female";
                      } else if (_isMalePressed) {
                        _gender = "Male";
                      }
                      // SignUpController.to.nick.value = nickTextEditingController.text;
                      SignUpController.to.name= nameTextEditingController.text;
                      SignUpController.to.gender = _gender;
                      SignUpController.to.check();
                    };
                  },
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
      ),
    );
  }
}
