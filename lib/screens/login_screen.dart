import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:untitled1/constans.dart';
import 'package:untitled1/screens/signUp_screen.dart';
class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreen();
}
class _LoginScreen extends State<LoginScreen>{

  bool passToggle = true;
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Material(
      key: _formKey,
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(padding: EdgeInsets.all(20), child: Image.asset("assets/images/doctors.png")),
              SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.all(12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Enter Username"),
                        prefixIcon: Icon(Icons.person)
                    ),
                    validator: EmailValidator(errorText: emailError),
                    onSaved: (email)=> _email= email!,
                  )
              ),
              Padding(
                  padding: EdgeInsets.all(12),
                  child: TextFormField(
                      obscureText: passToggle ? true : false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Password"),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: InkWell(
                            onTap: (){
                              if (passToggle == true){
                                passToggle = false;
                              }else{
                                passToggle = true;
                              }
                              setState(() {});
                            },
                            child: passToggle ? Icon(CupertinoIcons.eye_slash_fill) : Icon(CupertinoIcons.eye_fill),
                          )
                      ),
                      validator: passwordValidator,
                      onSaved: (password)=> _password= password!,
                  )
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: PurpleColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        if(_formKey.currentState!.validate()){
                          _formKey.currentState!.save();
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                          child: Center(child: Text("Log In", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)))
                      )
                    )
                  )
                )
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don`t have any account", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black54)),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                      },
                      child: Text("Create Account", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF7165D6)))
                  )
                ],
              )
            ]
          )
        )
      )
    );
  }

}