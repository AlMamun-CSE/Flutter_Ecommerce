import 'package:flutter/material.dart';
import 'package:tokota/constants.dart';
import 'package:tokota/route.dart';
import 'package:tokota/screen/splash/SplashScreen.dart';
import 'package:tokota/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: route,
    );
  }
}
