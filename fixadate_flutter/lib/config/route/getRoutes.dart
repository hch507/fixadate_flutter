

import 'package:fixadate_flutter/presentation/ui/sign_up/s_signup1.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../presentation/presenter/sign_up_controller.dart';
import '../../presentation/ui/login/s_login.dart';
import '../../presentation/ui/login/s_login_error.dart';
import '../../presentation/ui/sign_up/infoinput1_page.dart';

List<GetPage>? getRoutes = [
  GetPage(name: "/login", page: () => LoginScreen()),
  GetPage(name: "/loginError", page: () => LoginErrorScreen()),
  GetPage(name: "/signUp1", page: () => FirstSignUpScreen(), binding: BindingsBuilder(() => Get.lazyPut<SignUpController>(
          () => SignUpController()))),
  GetPage(name: "/signUp2", page: () => LoginErrorScreen())

];