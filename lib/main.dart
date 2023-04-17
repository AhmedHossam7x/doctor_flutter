import 'package:flutter/material.dart';
// import 'package:untitled1/screens/WelcomeScreen.dart';
import 'package:untitled1/splash/SplashView.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WelcomeScreen()
      home: SplashView(),
    );
  }
}