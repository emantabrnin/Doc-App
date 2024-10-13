import 'package:docdoc/core/features/UI/SignUp.dart';
import 'package:docdoc/core/features/UI/loginUi.dart';
import 'package:docdoc/core/features/forget_password_screen.dart';
import 'package:flutter/material.dart';

import '../features/ProfileScreen.dart';
import '../features/UI/OnBoardingUI.dart';
import 'Routes.dart';

class AppRouter{
  Route? generateRoute(RouteSettings settings){
  switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingUI(),
        );
       case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginUI(),
        );
        case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUp(),
        );
        case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ForgetPassword(),
        );
         case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      default:
        return null;
    }
  }
}