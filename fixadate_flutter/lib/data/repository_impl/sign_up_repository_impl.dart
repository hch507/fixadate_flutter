

import 'package:fixadate_flutter/config/di/locator.dart';
import 'package:fixadate_flutter/domain/repository/sign_up_repository.dart';
import '../source/remote/random_nick_retrofit_client.dart';

class SignUpRepositoryImpl extends SignUpRepository{
  RandomNickRestClient randomNickRestClient;
  SignUpRepositoryImpl() : randomNickRestClient = locator<RandomNickRestClient>();
  @override
  Future<String> getRandomNick() async {
    return await randomNickRestClient.getRandomNick();
  }

}