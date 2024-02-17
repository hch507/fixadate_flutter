import 'dart:math';

import 'package:fixadate_flutter/domain/usecase/sign_up_usecase.dart';
import 'package:get/get.dart';

import '../ui/sign_up/infoinput1_page.dart';

class SignUpController extends GetxController{
  static SignUpController get to => Get.find();
  late String oauthId;
  late String oauthPlatform;
  Rx<String?> randomNick = "".obs;
  late String name;
  late String birth;
  late String gender;
  GetRandomNcikUsecase getRandomNcikUsecase = GetRandomNcikUsecase();
  Future<void> RandomNick() async{
    randomNick =Rx<String?>(await getRandomNcikUsecase.excute());
    logger.i(randomNick);
  }
  void check(){
    logger.i("$oauthId $oauthPlatform $name $gender");
  }
}