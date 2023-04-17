import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled1/utiles/sizeConfig.dart';
import 'package:untitled1/wedgets/CustomBtn.dart';
import 'package:untitled1/wedgets/CustomIndicator.dart';
import 'package:untitled1/wedgets/CustomPageView.dart';
// import 'package:testswap/features/splash/presentation/SplashView.dart';
import 'WelcomeScreen.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key?key}) : super(key: key);
  @override
  OnBoardingBodyState createState() => OnBoardingBodyState();
}

class OnBoardingBodyState extends State<OnBoardingBody>{

  PageController? pageController;

  @override
  void initState() {
    pageController= PageController(initialPage: 0)..addListener(() {setState(() {});});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          CustomPageView(pageController: pageController),
          Positioned(
              left: 0, right: 0, bottom: SizeConfig.defaultSize! * 25,
              child: CustomIndicator(dotsIndex: pageController!.hasClients ? pageController?.page : 0)
          ),
          Visibility(
            visible: pageController!.hasClients ? (pageController!.page != 2 ? true : false) : true,
            child: Positioned(
              top: MediaQuery.of(context).size.height * .1,
              right: 30,
              child: TextButton(
                onPressed: (){Get.to(() => WelcomeScreen());},
                child: Text("Skip", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF898989)),textAlign: TextAlign.end)
              )
            )
          ),
          Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomButton(
              voidCallback: (){
                if(pageController!.page! < 2){
                  pageController?.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                }else{
                  Get.to(() => WelcomeScreen(), transition: Transition.rightToLeft, duration: Duration(milliseconds: 500));
                }
              },
              text: pageController!.hasClients ? (pageController!.page != 2 ? "Next" : "Get Start") : "Next")
            )
        ]
    );
  }
}