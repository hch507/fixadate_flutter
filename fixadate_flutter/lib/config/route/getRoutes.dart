import 'package:fixadate_flutter/presenter/ui/login/s_login.dart';
import 'package:fixadate_flutter/presenter/ui/login/s_login_error.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../presenter/ui/sign_up/infoinput1_page.dart';

List<GetPage>? getRoutes = [
  GetPage(name: "/login", page: () => LoginScreen()),
  GetPage(name: "/loginError", page: () => LoginErrorScreen()),
  GetPage(name: "/signUp1", page: () => InfoInput1Page(data: {"oauthId": "hch", "oauthPlatform": "kakao"},))
];