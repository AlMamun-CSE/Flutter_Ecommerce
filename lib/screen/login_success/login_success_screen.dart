import 'package:flutter/material.dart';
import 'package:tokota/screen/login_success/components/Body.dart';

class LogInSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: SizedBox(),
        centerTitle: true,
        title: Text("LogIn Success"),
      ),
      body: Body(),
    );
  }
}
