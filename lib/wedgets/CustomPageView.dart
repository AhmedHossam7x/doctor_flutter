import 'package:flutter/cupertino.dart';
import 'package:untitled1/wedgets/PageViewItem.dart';

class CustomPageView extends StatelessWidget{

  const CustomPageView({Key? key, @required this.pageController}) : super(key: key);
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: "assets/images/doctor-patient.png",
          title: "Chating",
          descraption: "Can chat with any Doctor",
        ),
        PageViewItem(
          image: "assets/images/health-check.png",
          title: "Add your profile",
          descraption: "Get your profile to the doctors see it",
        ),
        PageViewItem(
          image: "assets/images/medical-team (1).png",
          title: "Cheack Medicain",
          descraption: "by the profile history can take your medicain"
        )
      ]
    );
  }

}