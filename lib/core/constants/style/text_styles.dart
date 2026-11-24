import 'package:docdoc_app/core/constants/style/font_weight_helper.dart';
import 'package:docdoc_app/core/constants/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class TextStyles {
  static TextStyle font24BoldBlack = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle font24BoldBlue = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlue,
  );
  static TextStyle font32BoldBlue = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlue,
  );
  static TextStyle font13RegularGray = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.gray,
  );
  static TextStyle font13RegularBlue = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.primaryBlue,
  );
  static TextStyle font14RegularGray = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.gray,
  );
  static TextStyle font14RegularlessLightGray = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.lessLightGray,
  );
  static TextStyle font14MediumLightGray = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.lightGray,
  );
  static TextStyle font16SemiBoldWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
}
