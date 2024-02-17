
import 'package:dio/dio.dart';
import 'package:fixadate_flutter/domain/repository/sign_up_repository.dart';

import '../source/remote/random_nick_retrofit_client.dart';

class SignUpRepositoryImpl extends SignUpRepository{
  RandomNickRestClient randomNickRestClient;
  SignUpRepositoryImpl() : randomNickRestClient = RandomNickRestClient(Dio());
  @override
  Future<String> getRandomNick() async {
    return await randomNickRestClient.getRandomNick();
  }

}