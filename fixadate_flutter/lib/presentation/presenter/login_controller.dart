import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../ui/sign_up/s_signup1.dart';

class LoginController extends GetxController{
  static LoginController get to => Get.find();

  void requestKakaoLogin(){

  }
  void requestGoogleLogin() async{
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser != null) {
      logger.i('name = ${googleUser.displayName}');
      logger.i('email = ${googleUser.email}');
      logger.i('id = ${googleUser.id}');
      Get.toNamed("/signup1" ,arguments: [googleUser.id,"google"]);

    }
  }
  void requestAppleLogin(){

  }
}