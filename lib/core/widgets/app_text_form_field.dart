import 'package:docdoc/core/theming/ColorsManager.dart';
import 'package:docdoc/core/theming/TextStyles.dart';
import 'package:flutter/material.dart';
class ApTextFormField extends StatelessWidget {

    final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  const ApTextFormField({super.key, 
  this.contentPadding,
   this.focusedBorder,
    this.enabledBorder, 
    this.inputTextStyle, 
    this.hintStyle,
     required this.hintText, 
     this.isObscureText,
      this.suffixIcon, 
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Flexible(
        child: TextField(
          controller: TextEditingController(),
          decoration:  InputDecoration(
            isDense: true,
            //contentPadding:  EdgeInsets.symmetric(horizontal: 5.w , vertical: 7.h) ,
            focusedBorder:focusedBorder?? OutlineInputBorder(
              borderSide:  const BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3
              ),
              borderRadius: BorderRadius.circular(16)
            ),
            enabledBorder: enabledBorder?? OutlineInputBorder(
              borderSide:  const BorderSide(
                color: ColorsManager.lightGray,
                width: 1.3
              ),
              borderRadius: BorderRadius.circular(16)
            ),
                errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
         hintStyle:hintStyle?? TextStyles.font14LightGrayRegular,
         hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? ColorsManager.moreLightGray,
        filled: true,
         
          ),
          obscureText:  isObscureText?? true,
          style: TextStyles.font14DarkBlueMedium,
        ),
      ),
    );
  }
}