import 'package:flutter/material.dart';
import 'package:tokota/components/default_button.dart';
import 'package:tokota/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04,),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4 , //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08,),
        Text("Login Success",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: getProportionateScreenWidth(30),
        ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back To Home",
            press: (){

            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
