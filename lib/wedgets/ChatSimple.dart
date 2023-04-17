import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
class ChatSimple extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Color(0XFFE1E1E2)),
              child: Text(
                "Hello, what i can do for you, you can book appointment directory",
                style: TextStyle(fontSize: 16)
              )
            )
          )
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
                decoration: BoxDecoration(color: Color(0XFF7165D6)),
                child: Text("Hello Doctor, are your there?", style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ),
          ),
        )
      ]
    );
  }

}