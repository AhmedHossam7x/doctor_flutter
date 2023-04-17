import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:untitled1/screens/login_screen.dart';
import 'package:untitled1/wedgets/navbar_roots.dart';
import 'package:untitled1/wedgets/signUpForm.dart';
import 'package:untitled1/constans.dart';
class SignUpScreen extends StatefulWidget{
  @override
  State<SignUpScreen> createState() => _SignupScreen();
}
class _SignupScreen extends State<SignUpScreen>{

  bool passToggle= true;
  final _formKey = GlobalKey<FormState>();
  late String _userName, _email, _password, _phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
           child: SafeArea(
             child: Column(
                children: [
                  SizedBox(height: 5),
                  Padding(padding: EdgeInsets.all(20), child: Image.asset("assets/images/doctors.png")),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person)
                      ),
                      validator: RequiredValidator(errorText: requiredField),
                      onSaved: (name)=>_userName= name!,
                    )
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.email)
                          ),
                          validator: EmailValidator(errorText: emailError),
                          onSaved: (email)=> _email= email!,
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Phone",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.phone)
                          ),
                          validator: RequiredValidator(errorText: requiredField),
                          onSaved: (phone)=> _phoneNumber= phone!,
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: TextFormField(
                          obscureText: passToggle? true : false,
                          decoration: InputDecoration(
                              labelText: "Email Password",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.email),
                              suffixIcon: InkWell(
                                onTap: (){
                                  if(passToggle == true){
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>  NavbarRoots()));
                            }
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                            child: Text("SigUp", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white) ,textAlign: TextAlign.center)
                          )
                        )
                      )
                    )
                  ),
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have Account?", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black54)),
                        TextButton(
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));},
                            child: Text("Login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: PurpleColor))
                        )
                      ]
                  )
                ]
             )
           )
          ),
        )
    );
  }

}