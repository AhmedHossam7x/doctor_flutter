import 'package:flutter/cupertino.dart';
import 'package:untitled1/constans.dart';
import 'package:untitled1/utiles/sizeConfig.dart';

class CustomButton extends StatelessWidget{

  final String? text;
  final VoidCallback? voidCallback;
  const CustomButton({Key? key, this.text, this.voidCallback}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
          width: SizeConfig.screenWidth,
          height: 60,
          decoration: BoxDecoration(
            color: PurpleColor,
            borderRadius: BorderRadius.circular(8)
          ),
          child: Center(
            child: Text(text!, style: TextStyle(fontSize: 14, color: Color(0xffffffff), fontWeight: FontWeight.w600), textAlign: TextAlign.left)
          )
      ),
    );
  }

}