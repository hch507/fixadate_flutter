

import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../presentation/ui/login/s_login.dart';
import '../../presentation/ui/login/s_login_error.dart';
import '../../presentation/ui/sign_up/infoinput1_page.dart';

List<GetPage>? getRoutes = [
  GetPage(name: "/login", page: () => LoginScreen()),
  GetPage(name: "/loginError", page: () => LoginErrorScreen()),
  GetPage(name: "/signUp1", page: () => InfoInput1Page(data: {"oauthId": "hch", "oauthPlatform": "kakao"},),),

];