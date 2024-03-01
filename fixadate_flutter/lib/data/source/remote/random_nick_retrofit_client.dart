import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';


part 'random_nick_retrofit_client.g.dart';
@RestApi(baseUrl: "http://3.37.141.38:8080/")
abstract class RandomNickRestClient{
  factory RandomNickRestClient(Dio dio, {String baseUrl}) = _RandomNickRestClient;

  @GET("member/random/nickname")
  Future<String> getRandomNick();
}