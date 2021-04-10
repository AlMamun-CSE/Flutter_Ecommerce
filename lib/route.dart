import 'package:flutter/material.dart';
import 'package:tokota/screen/complete_profile/complete_profile_screen.dart';
import 'package:tokota/screen/forgot_password/forgot_password_screen.dart';
import 'package:tokota/screen/login_success/login_success_screen.dart';
import 'package:tokota/screen/phone_otp/phone_otp_screen.dart';
import 'package:tokota/screen/sign_in/sign_in_screen.dart';
import 'package:tokota/screen/sign_up/sign_up_screen.dart';
import 'package:tokota/screen/splash/SplashScreen.dart';

// we use route name
// All our route will be available
final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LogInSuccessScreen.routeName: (context) => LogInSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfile.routeName: (context) => CompleteProfile(),
  PhoneOtpScreen.routeName: (context) => PhoneOtpScreen(),
};
