import 'package:flutter/material.dart';
import 'package:tokota/screen/sign_in/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign In",
        ),
      ),
      body: SignInBody(),
    );
  }
}
