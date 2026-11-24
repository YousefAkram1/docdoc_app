import 'package:docdoc_app/core/constants/style/text_styles.dart';
import 'package:docdoc_app/core/constants/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPading;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final String hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final bool? isObSecure;
  final Color? backgroundColor;
  const AppTextFormField({
    super.key,
    this.contentPading,
    this.enabledBorder,
    this.focusedBorder,
    required this.hintText,
    this.hintStyle,
    this.suffixIcon,
    this.isObSecure,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding:
            contentPading ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.lighterGray, width: 1.3),
              borderRadius: BorderRadius.circular(16.r),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryBlue, width: 1.3),
              borderRadius: BorderRadius.circular(16.r),
            ),
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14MediumLightGray,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? AppColors.moreLighterGray,
        filled: true,
      ),

      obscureText: isObSecure ?? false,
    );
  }
}
