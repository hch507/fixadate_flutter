
import 'package:fixadate_flutter/config/di/locator.dart';
import 'package:fixadate_flutter/domain/usecase/sign_up_usecase.dart';
import 'package:get/get.dart';
import '../ui/sign_up/s_signup1.dart';


class SignUpController extends GetxController{
  static SignUpController get to => Get.find();
  late String oauthId;
  late String oauthPlatform;
  late String nick;
  late String name;
  late String birth;
  late String gender;
  late String? profession=null;
  GetRandomNcikUsecase getRandomNcikUsecase = locator<GetRandomNcikUsecase>();
  Future<void> RandomNick() async{
    nick =await getRandomNcikUsecase.excute();
    logger.i(nick);
  }
  void check(){
    logger.i("$oauthId $oauthPlatform $nick $name $gender $birth $profession");
  }
}