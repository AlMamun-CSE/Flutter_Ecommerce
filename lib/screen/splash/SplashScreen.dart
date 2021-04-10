import 'package:flutter/material.dart';
import 'package:tokota/components/body.dart';
import 'package:tokota/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    //set SizeConfig context and screen size configuration
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
