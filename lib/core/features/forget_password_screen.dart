import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/core/helper/space.dart';
import 'package:docdoc/core/theming/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
   child: Container(
    color: Colors.white,
     child: Column(
      children:[
        spaceVertical(94),
        Container(
          height: 94.h,
          width: 328.w,
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextStyle(style: TextStyle(), child: Text('Forgot Password',style: TextStyles.font24BlueBold,)),
            spaceVertical(12.h),
            DefaultTextStyle(style: TextStyle(), child: Text('FAt our app, we take the security of your information seriously.',style: TextStyles.font14GrayRegular,)),

          ],
         ),
        ),
        spaceVertical(20),
         Container(
          height: 55.h,
          width: 327,
        //  child:const  ApTextFormField(hintText: 'Phone Number or Email')
        ),
        const Spacer(),
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            height: 52,
            width: 327,
            child: AppTextButton(
                        buttonText: "Reset Password",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          
                        },
                      ),
          ),
      ]
     ),
   ),
    );
  }
}