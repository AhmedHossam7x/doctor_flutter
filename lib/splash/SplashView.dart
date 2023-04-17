import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled1/utiles/sizeConfig.dart';
import  'package:untitled1/constans.dart';
import '../screens/OnBoardingBody.dart';

class SplashView extends StatefulWidget{
  const SplashView({Key? key}) : super(key: key);
  @override
  SplashBodyF createState() => SplashBodyF();
}
class SplashBodyF extends State<StatefulWidget> with SingleTickerProviderStateMixin{

  AnimationController? animatedContainer;
  Animation? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animatedContainer = AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation= Tween<double>(begin: .2, end: 1).animate(animatedContainer!);
    animatedContainer?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    super.dispose();
    animatedContainer?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          width: double.infinity,
          color: PurpleColor,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                AnimatedBuilder(
                    animation: fadingAnimation!,
                    builder: (context, Widget? child) => Opacity(
                        opacity: fadingAnimation?.value,
                        child: Text('Welcome to App', style: TextStyle(fontSize: 51, fontWeight: FontWeight.bold, color: Colors.white))
                    )
                ),
                Spacer(),
                Image.asset("assets/images/Serena_Gome.png", fit: BoxFit.fill)
              ]
          )
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(()=>OnBoardingBody(), transition: Transition.fade);
    });
  }
  
}