import 'package:flutter/cupertino.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constans.dart';

class SignUpForm extends StatelessWidget{
  
  final GlobalKey formKey;
  late String _userName, _email, _password, _phoneNumber;
  bool passToggle = true;
  
  SignUpForm({Key? key, required this.formKey,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person)
                  ),
                validator: RequiredValidator(errorText: requiredField),
                onSaved: (userName) => _userName = userName!,
              ),
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
                 onSaved: (email) => _email = email!,
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
                  onSaved: (phoneNumber) => _phoneNumber = phoneNumber!,
              )
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: TextFormField(
                  obscureText: passToggle? true : false,
                  decoration: InputDecoration(
                      labelText: "Email Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: InkWell(
                        onTap: (){
                          if(passToggle == true){
                            passToggle = false;
                          }else{
                            passToggle = true;
                          }
                          // setState(() {});
                        },
                        child: passToggle ? Icon(CupertinoIcons.eye_slash_fill) : Icon(CupertinoIcons.eye_fill),
                      )
                  ),
                  validator: passwordValidator,
                  onSaved: (password) => _password = password!,
                  onChanged: (pass) => _password = pass,
              )
          ),
        ]
      )
    );
  }
}
// class TextFieldName extends StatelessWidget {
//
//   final String text;
//   const TextFieldName({Key? key, required this.text,}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.only(bottom: 16 / 3),
//         child: Text(text, style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54))
//     );
//   }
// }