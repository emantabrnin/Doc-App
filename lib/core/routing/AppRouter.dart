import 'package:docdoc/core/features/UI/SignUp.dart';
import 'package:docdoc/core/features/UI/LoginScreen.dart';
import 'package:docdoc/core/features/forget_password_screen.dart';
import 'package:docdoc/core/features/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../DI/dependancy_injection.dart';
import '../features/ProfileScreen.dart';
import '../features/UI/OnBoardingUI.dart';
import '../features/login/repo/logic/login_cubit.dart';
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
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
         case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const homeScreen(),
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