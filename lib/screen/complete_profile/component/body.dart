import 'package:flutter/material.dart';
import 'package:tokota/components/default_button.dart';
import 'package:tokota/components/form_error.dart';
import 'package:tokota/constants.dart';
import 'package:tokota/screen/sign_in/custom_surffix_icon.dart';
import 'package:tokota/size_config.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02,),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05,),//5%
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30),),
              Text("By Continuing your confirm that you agree \nwith our Tern and Condition",
              textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}