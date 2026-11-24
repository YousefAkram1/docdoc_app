import 'package:docdoc_app/core/constants/style/font_weight_helper.dart';
import 'package:docdoc_app/core/constants/values/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextAndTapedTextComponent extends StatelessWidget {
  final String mainText;
  final String pageText;
  final VoidCallback onTap;
  final TextAlign textAlign;

  const TextAndTapedTextComponent({
    super.key,
    required this.mainText,
    required this.pageText,
    required this.onTap,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RichText(
        textAlign: textAlign,
        text: TextSpan(
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeightHelper.regular,
          ),
          children: [
            TextSpan(
              text: mainText,
              style: TextStyle(color: AppColors.lessLightGray),
            ),
            TextSpan(
              text: pageText,
              style: TextStyle(color: AppColors.primaryBlue),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
