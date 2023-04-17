import 'dart:ui';
import 'package:form_field_validator/form_field_validator.dart';
const KMainColor = Color(0xFF5DADE2);
const PurpleColor= Color(0xFF7165D6);
const DefaultPadding = 16.0;

const emailError = 'Enter a valid email address';
const requiredField = "This field is required";

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ],
);