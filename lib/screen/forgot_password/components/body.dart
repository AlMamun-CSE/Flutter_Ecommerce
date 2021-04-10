import 'package:flutter/material.dart';
import 'package:tokota/components/default_button.dart';
import 'package:tokota/components/no_account_text.dart';
import 'package:tokota/screen/sign_in/custom_surffix_icon.dart';
import 'package:tokota/screen/sign_in/form_errors.dart';
import 'package:tokota/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04,),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account ",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _fromKey = GlobalKey<FormState>();
  String email;
  final List<String> errors = [];


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(
                svgIcon: "assets/icons/Mail.svg",
              ),
            ),
          ),

          SizedBox(height: getProportionateScreenHeight(30),),
          FromError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1,),
          DefaultButton(
            text: "Continue",
            press: (){
              if(_fromKey.currentState.validate()){
                //Do what you want to do
                _fromKey.currentState.save();
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1,),
          NoAccountText(),
        ],
      ),
    );
  }
}


