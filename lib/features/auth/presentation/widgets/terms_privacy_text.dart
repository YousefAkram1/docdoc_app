import 'package:docdoc_app/core/constants/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsPrivacyText extends StatelessWidget {
  const TermsPrivacyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: const TextStyle(fontSize: 12),
          children: [
            TextSpan(
              text: 'By logging, you agree to our ',
              style: TextStyle(color: AppColors.lessLightGray),
            ),
            TextSpan(
              text: 'Terms & Conditions',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(
                color: AppColors.lessLightGray,
              ).copyWith(height: 1.5),
            ),
            TextSpan(
              text: 'Privacy Policy.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
