import 'package:docdoc/core/widgets/GetStartedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theming/TextStyles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        // SvgPicture.asset("assests/svg/logoapp_low_opacity.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child:  SvgPicture.asset("assests/svg/test.svg" ),
        ),
        SvgPicture.asset("assests/svg/logoapp_low_opacity.svg"),
        Positioned(
          top: 330.h,
          right: 32,
          left: 32,
          child: Container(
            height:144.h ,
            width: 312,
             child: DefaultTextStyle(
              style: const TextStyle(),
               child: Text(
                         'Best Doctor\nAppointment App',
                         textAlign: TextAlign.center,
                         style: TextStyles.font32BlueBold.copyWith(
                height: 1.4,
                         ),
                       ),
             ),
          ),
        )
      
      ],
    );
  }
}