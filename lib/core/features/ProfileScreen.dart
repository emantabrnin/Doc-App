import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/core/helper/space.dart';
import 'package:docdoc/core/theming/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/app_text_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
          spaceVertical(94),
        Container(
              height: 94.h,
              width: 328.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle( 
                    style: const TextStyle(),
                    child: Text('Fill Your Profile',style: TextStyles.font24BlueBold,)),
                  spaceVertical(10),
                   DefaultTextStyle( 
                    style: const TextStyle(),
                    child:Text('Please take a few minutes to fill out your profile with as much detail as possible.',style: TextStyles.font14LightGrayRegular,)),             
                ],
              ),
            ),
           spaceVertical(20),
           Container( 
    height:120,
    width: 120,
    decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(70)
    ),
    child: Image.asset('assests/images/profile.png'),
),
spaceVertical(20),
Container(
  height: 268.h,
  width: 327,
  child: Column(
    children: [
     // const ApTextFormField(hintText: 'FullName'),
      spaceVertical(20),
      //const ApTextFormField(hintText: 'Email'),
       spaceVertical(20),
       //const ApTextFormField(hintText: 'Password'),
       spaceVertical(20),
       //const ApTextFormField(hintText: 'Phone'),

    ],
  ),
),
         Spacer(),
          Container(
            height:52 ,
            width: 327,
             child: AppTextButton(
                        buttonText: "Submit",
                        textStyle: TextStyles.font16WhiteSemiBold,
                       onPressed: () {
                         
                       },
             ),
           ),
          ],
        ),
      ),
    );
  }
}