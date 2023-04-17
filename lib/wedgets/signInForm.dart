import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignInForm extends StatelessWidget{

  final GlobalKey formKey;
  late String _email, _password;
  SignInForm({Key? key, required this.formKey,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: []
        )
    );
  }
  
}