import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController{
  static LoginController get to => Get.find();

  void requestKakaoLogin(){

  }
  void requestGoogleLogin() async{
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser != null) {
      print('name = ${googleUser.displayName}');
      print('email = ${googleUser.email}');
      print('id = ${googleUser.id}');

    }
  }
  void requestAppleLogin(){

  }
}