import 'package:fixadate_flutter/presentation/ui/sign_up/widget/w_custom_profile_title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/w_preivous.dart';

class ThirdSignUpScreen extends StatefulWidget {
  const ThirdSignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ThirdSignUpScreenState();
}

class _ThirdSignUpScreenState extends State<ThirdSignUpScreen> {
  // AssetImage _defaultProfileImage = AssetImage('assets/images/default_profile_image.png');
  AssetImage _defaultProfileImage = AssetImage('assets/default_profile_image.png');

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
              CustomProfileTitleText(),
              SizedBox(height: 30),
              CircleAvatar(
                radius: 62,
                // backgroundColor: ProfileImageBorderColor,
                child: InkWell(
                  onTap: () {
                    print("wokring fineeee");
                  },
                  child: CircleAvatar(
                      radius: 58,
                      backgroundImage: _defaultProfileImage
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }

}