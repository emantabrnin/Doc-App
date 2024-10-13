import 'package:docdoc/core/widgets/dont_have_account_text.dart';
import 'package:docdoc/core/widgets/term_and_condition.dart';
import 'package:docdoc/core/helper/Extensions.dart';
import 'package:docdoc/core/helper/space.dart';
import 'package:docdoc/core/routing/Routes.dart';
import 'package:docdoc/core/theming/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        
        color: Colors.white,
        child: Column(
          children: [
            spaceVertical(94.h),
            Container(
              height: 119.h,
              width: 312,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   DefaultTextStyle(
        style: const TextStyle(),
        child: Text('Create Account',style: TextStyles.font24BlueBold,)),
      spaceVertical(10),
      DefaultTextStyle(
        style: const TextStyle(),
        child: Text('Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
        style: TextStyles.font14GrayRegular,),
      ),
                ],
              ),
            ),
         spaceVertical(10),
          Container(
            width: 327,
            height: 197.h,
            child: Column(
              children: [
                const ApTextFormField(hintText: 'Email',),
               spaceVertical(15),
               const ApTextFormField(hintText: 'Password',),
               spaceVertical(15),
               const ApTextFormField(hintText: 'Ypur Number',suffixIcon: Icon(Icons.countertops),),
              ],
            ),
          ),
           Container(
            height:52 ,
            width: 327,
             child: AppTextButton(
                        buttonText: "Create Account",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                           context.pushNamed(Routes.profileScreen);
                        },
             ),
           ),
             spaceVertical(120),
            const TermAndCondition(),
            spaceVertical(20),
            const DontHaveAcoountText()
          ],
        ),
      )
    );
  }
}