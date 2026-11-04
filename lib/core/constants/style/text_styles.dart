import 'package:docdoc_app/core/constants/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class TextStyles {
  static TextStyle font24BoldBlack = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle font32BoldBlue = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlue,
  );
  static TextStyle font13Weight400Gray = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.gray,
  );
  static TextStyle font16Weight600White = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
