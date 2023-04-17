import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constans.dart';

class CustomIndicator extends StatelessWidget{

  const CustomIndicator({Key? key, this.dotsIndex}) : super(key: key);
  final double? dotsIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
        dotsCount: 3,
        position: dotsIndex!,
        decorator: DotsDecorator(
          color: Colors.white,
          activeColor: PurpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: KMainColor)
          )
        )
    );
  }



}