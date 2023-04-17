import 'package:flutter/material.dart';
import 'package:untitled1/wedgets/upcomingScreen.dart';
class Schedule extends StatefulWidget{
  const Schedule({super.key});
  @override
  State<Schedule> createState() => _Schedule();
}
class _Schedule extends State<Schedule>{

  int _buttonIndex=0;
  final _scheduleWidgets= [
    UpcomingScreen(),
    Container(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("Schedule", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(color: Color(0XFFF4F6FA), borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){setState(() {_buttonIndex=0;});},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                        color: _buttonIndex==0 ? Color(0XFF7165D6): Colors.transparent,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Upcoming", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: _buttonIndex == 0? Colors.white : Colors.black)),
                    ),
                  ),
                  InkWell(
                    onTap: (){setState(() {_buttonIndex=1;});},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                          color: _buttonIndex==1 ? Color(0XFF7165D6): Colors.transparent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                          "Complete",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,color: _buttonIndex == 1? Colors.white : Colors.black
                          )
                      )
                    ),
                  ),
                  InkWell(
                    onTap: (){setState(() {_buttonIndex=2;});},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                          color: _buttonIndex==2 ? Color(0XFF7165D6): Colors.transparent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                          "Canceling",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: _buttonIndex == 2? Colors.white : Colors.black
                          )
                      )
                    )
                  )
                ]
              )
            ),
            SizedBox(height: 30),
            _scheduleWidgets[_buttonIndex]
          ],
        ),
      ),
    );
  }

}