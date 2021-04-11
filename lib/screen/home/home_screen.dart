import 'package:flutter/material.dart';
import 'package:tokota/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
