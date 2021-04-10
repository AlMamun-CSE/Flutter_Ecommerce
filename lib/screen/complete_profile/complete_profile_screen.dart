import 'package:flutter/material.dart';
import 'package:tokota/screen/complete_profile/component/body.dart';


class CompleteProfile extends StatelessWidget {
  static String routeName = "/complete_profile_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Complete Profile"),centerTitle: true,),
      body: Body(),
    );
  }
}
