import 'package:flutter/material.dart';
import 'package:tokota/components/default_button.dart';
import 'package:tokota/constants.dart';
import 'package:tokota/screen/sign_in/custom_surffix_icon.dart';
import 'package:tokota/screen/sign_in/form_errors.dart';
import 'package:tokota/screen/sign_in/social_card.dart';
import 'package:tokota/screen/sign_up/components/sign_up_form.dart';
import 'package:tokota/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02,),//2%
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text("Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07,),//8 % off total height
              SignUpFrom(),
              SizedBox(height: SizeConfig.screenHeight * 0.07,),// 8 % off total height
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenWidth(20),),
              Text("By continuing your confirm that you agree \nwith our Team and Condition",
              textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}