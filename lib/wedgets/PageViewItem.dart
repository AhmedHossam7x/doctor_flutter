import 'package:flutter/cupertino.dart';
import 'package:untitled1/utiles/sizeConfig.dart';

class PageViewItem extends StatelessWidget{

  const PageViewItem({Key? key, this.title, this.descraption, this.image}) : super(key: key);
  final String? title, descraption, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xFFffffff),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.defaultSize! * 20),
          SizedBox(height: SizeConfig.defaultSize! * 20, child: Image.asset(image!)),
          SizedBox(height: SizeConfig.defaultSize! * 3),
          Text(title!, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xFF2f2e41)), textAlign: TextAlign.left),
          SizedBox(height: SizeConfig.defaultSize! * 1.5),
          Text(descraption!, style: TextStyle(fontSize: 12, color: Color(0xFF2f2e41)),textAlign: TextAlign.left)
        ],
      ),
    );
  }
}