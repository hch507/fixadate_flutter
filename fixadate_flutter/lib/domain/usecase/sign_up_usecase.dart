import 'package:fixadate_flutter/config/di/locator.dart';
import '../repository/sign_up_repository.dart';

class GetRandomNcikUsecase{
  SignUpRepository signUpRepository = locator<SignUpRepository>();
  Future<String> excute() async{
    return await signUpRepository.getRandomNick();
  }
}