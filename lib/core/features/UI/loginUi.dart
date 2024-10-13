import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/core/widgets/dont_have_account_text.dart';
import 'package:docdoc/core/widgets/term_and_condition.dart';
import 'package:docdoc/core/helper/Extensions.dart';
import 'package:docdoc/core/helper/space.dart';
import 'package:docdoc/core/routing/Routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/TextStyles.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}


class _LoginUIState extends State<LoginUI> {
  final formKey =GlobalKey<FormState>();
final formKey2 =GlobalKey<FormState>();
  bool isObScureText =true;
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: SafeArea(
        child:Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 94.h),
            SingleChildScrollView(
              child: Container(
                height: 280.h,
                width: 312.w,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextStyle(
                      style:  const TextStyle(),
                      child: Text('Welcome Back',style: TextStyles.font24BlueBold)),
                    spaceVertical(8),
                     DefaultTextStyle(
                      style:  const TextStyle(),
                       child: Text('We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                                       style:  TextStyles.font14GrayRegular,
                                       ),
                     ),
                     spaceVertical(15),
                    Form(
                      key: formKey,
                      child: const ApTextFormField(hintText: 'Email',)
                      ),
                      spaceVertical(20),
                      Form(
                      key: formKey2,
                      child:  ApTextFormField(
                        hintText: 'Password',
                        isObscureText: isObScureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObScureText =! isObScureText;
                            });
                          },
                          child: Icon(isObScureText ? Icons.visibility_off : Icons.visibility)),
                        )
                      ),
                      spaceVertical(7),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: (){
                            context.pushReplacementNamed(Routes.forgetPasswordScreen);
                          },
                          child: DefaultTextStyle(
                            style: TextStyle(),
                            child: Text('ForgetPassword !' , style: TextStyles.font12BlueRegular,)),
                        ),
                      ),
                      spaceVertical(7),
                       AppTextButton(
                      buttonText: "Login",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        
                      },
                    ),
                  ],
                ),
              ),
            ),
            spaceVertical(10),
            const TermAndCondition(),
            spaceVertical(20),
            const DontHaveAcoountText()
          ],
        )
        ),
    );
  }
}