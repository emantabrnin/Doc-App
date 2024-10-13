import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theming/TextStyles.dart';

class AppLogoAndName extends StatelessWidget {
  const AppLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assests/svg/logo_app.svg"),
        SizedBox(width: 10.w,),
        DefaultTextStyle(
          style: TextStyle(),
          child: Text(
            'DocDoc',
            style: TextStyles.font24BlackBold,
          ),
        ),
      ],
    );
  }
}