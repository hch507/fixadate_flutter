
import 'package:dio/dio.dart';
import 'package:fixadate_flutter/data/repository_impl/sign_up_repository_impl.dart';
import 'package:fixadate_flutter/data/source/remote/random_nick_retrofit_client.dart';
import 'package:fixadate_flutter/domain/repository/sign_up_repository.dart';
import 'package:fixadate_flutter/domain/usecase/sign_up_usecase.dart';
import 'package:get_it/get_it.dart';

final locator =GetIt.instance;

void configureDependencies(){
  //RandomNick dependency
  locator.registerFactory<RandomNickRestClient>(() => RandomNickRestClient(Dio()));
  locator.registerFactory<SignUpRepository>(() => SignUpRepositoryImpl());
  locator.registerFactory<GetRandomNcikUsecase>(() => GetRandomNcikUsecase());
}