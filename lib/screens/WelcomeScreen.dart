import 'package:flutter/material.dart';
import 'package:untitled1/screens/home_screen.dart';
import 'package:untitled1/screens/login_screen.dart';
import 'package:untitled1/wedgets/navbar_roots.dart';
import 'package:untitled1/screens/signUp_screen.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NavbarRoots()));},
                  child: Text("Skip", style: TextStyle(color: Color(0xFF7165D6), fontSize: 20))
                )
            ),
            SizedBox(height: 50),
            Padding(padding: EdgeInsets.all(20), child: Image.asset("assets/images/doctors.png")),
            SizedBox(height: 50),
            Text("Doctors Appointment", style: TextStyle(color: Color(0xFF7165D6), fontSize: 35, fontWeight: FontWeight.bold, letterSpacing: 1, wordSpacing: 2)),
            SizedBox(height: 10),
            Text("Appoint Your Doctor", style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.w500)),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text("Log In", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white))
                    )
                  )
                ),
                Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                        },
                        child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                            child: Text("Sign Up", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white))
                        )
                    )
                )
              ]
            )
          ]
        ),
      ),
    ));
  }
}