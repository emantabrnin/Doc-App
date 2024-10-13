import 'package:docdoc/core/widgets/DoctorImageAndText.dart';
import 'package:docdoc/core/widgets/GetStartedButton.dart';
import 'package:docdoc/core/widgets/app_logo_and_name.dart';
import 'package:docdoc/core/helper/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theming/TextStyles.dart';

class OnBoardingUI extends StatelessWidget {
  const OnBoardingUI({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            spaceVertical(66),
               Container(
                height: 38,
                width: 141.w,
                child: const AppLogoAndName()),
                spaceVertical(65),
               Container(
                //color: Colors.amber,
                height: 443,
                width: 443,
                child: Stack(
                  children: [
                    Image.asset('assests/images/onboarding_doctor.png'),
                     const DoctorImageAndText()
                  ],
                ),
               ),
               DefaultTextStyle(
              style: const TextStyle(),
               child: Text(
                         'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                         textAlign: TextAlign.center,
                         style: TextStyles.font12GrayRegular.copyWith(
                height: 1.4,
                         ),
                       ),
             ),
               Spacer(),
                Container(
                    height:52 ,
                   width: 327,
                  child: const GetStartedButton()) 
          ],
        ),
      ));
  }
}