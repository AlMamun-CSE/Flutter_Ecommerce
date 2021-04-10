import 'package:flutter/material.dart';
import 'package:tokota/screen/phone_otp/components/body.dart';

class PhoneOtpScreen extends StatelessWidget {
  static String routeName = "/phone_otp_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: SizedBox(),
        centerTitle: true,
        title: Text("Phone OTP"),
      ),
      body: Body(),
    );
  }
}
