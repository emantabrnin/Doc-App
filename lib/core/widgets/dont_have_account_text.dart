import 'package:docdoc/core/helper/Extensions.dart';
import 'package:docdoc/core/routing/Routes.dart';
import 'package:docdoc/core/theming/TextStyles.dart';
import 'package:flutter/material.dart';

class DontHaveAcoountText extends StatelessWidget {
  const DontHaveAcoountText({super.key});

  @override
  Widget build(BuildContext context) {
       return TextButton(
        onPressed: () {
        context.pushNamed(Routes.signUpScreen);
      },
         child: RichText(
             textAlign: TextAlign.center,
             text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an account?',
              style: TextStyles.font13DarkBlueRegular,
            ),
            TextSpan(
              text: ' Sign Up',
              style: TextStyles.font13BlueSemiBold,
              // recognizer: TapGestureRecognizer()
              //   ..onTap = () {
              //     context.pushReplacementNamed(Routes.signUpScreen);
              //   },
            ),
          ],
             ),
           ),
       );
  }
}