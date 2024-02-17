import 'package:fixadate_flutter/data/repository_impl/sign_up_repository_impl.dart';

import '../repository/sign_up_repository.dart';

class GetRandomNcikUsecase{
  SignUpRepository signUpRepository = SignUpRepositoryImpl();
  Future<String> excute() async{
    return await signUpRepository.getRandomNick();
  }
}