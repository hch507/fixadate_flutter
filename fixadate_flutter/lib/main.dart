
import 'package:fixadate_flutter/config/di/locator.dart';
import 'package:fixadate_flutter/config/route/getRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'config/theme/text_theme.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(19, 19, 19, 1.0),
        textTheme: fixadateTextTheme,
        useMaterial3: true,
      ),
      initialRoute: "/login",
      getPages: getRoutes,
    );
  }
}
