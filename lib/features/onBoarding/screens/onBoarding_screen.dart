import 'package:docdoc_app/core/constants/style/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/app_logo_and_name.dart';
import '../widgets/get_started_btn.dart';
import '../widgets/image_logo_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppLogoAndName(),
              ImageLogoText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: TextStyles.font13Weight400Gray,
                    ),
                    SizedBox(height: 32.h),
                    GetStartedBtn(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
