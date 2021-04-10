import 'package:flutter/material.dart';
import 'package:tokota/screen/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
