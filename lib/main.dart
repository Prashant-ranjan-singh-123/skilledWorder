import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:v_bhartiya/myapp.dart';
import 'on_boarding/config.dart';

void main()=> runApp(
  const GetMaterialApp(
    home: OnBoardingScreen(),
    debugShowCheckedModeBanner: false,
  )
);

class AppStart extends StatelessWidget {
  const AppStart({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(64,123,255,1),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return const OnBoardingScreen();
  }
}
