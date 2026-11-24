import 'package:docdoc_app/core/constants/style/text_styles.dart';
import 'package:docdoc_app/core/constants/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final double? raduis;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final VoidCallback onPressed;
  const AppButton({
    super.key,
    required this.buttonText,
    this.buttonTextStyle,
    this.raduis,
    this.backgroundColor,
    this.width,
    this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? AppColors.primaryBlue,
        ),
        minimumSize: WidgetStatePropertyAll(
          Size(width?.w ?? double.infinity, height?.h ?? 52),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(raduis?.r ?? 16),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: buttonTextStyle ?? TextStyles.font16SemiBoldWhite,
      ),
    );
  }
}
