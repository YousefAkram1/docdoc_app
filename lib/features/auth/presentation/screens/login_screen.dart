import 'package:docdoc_app/core/constants/style/text_styles.dart';
import 'package:docdoc_app/core/constants/values/app_colors.dart';
import 'package:docdoc_app/core/helper/spacing_helper.dart';
import 'package:docdoc_app/core/utils/widgets/app_button.dart';
import 'package:docdoc_app/core/utils/widgets/app_text_form_field.dart';
import 'package:docdoc_app/features/auth/presentation/widgets/terms_privacy_text.dart';
import 'package:docdoc_app/features/auth/presentation/widgets/text_and_tappedText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey formKey = GlobalKey<FormState>();
  bool isObSecure = true;
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BoldBlue),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14RegularGray,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: 'Email'),
                      verticalSpace(16),
                      AppTextFormField(
                        hintText: 'Password',
                        isObSecure: isObSecure,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObSecure = !isObSecure;
                            });
                          },
                          child: Icon(
                            isObSecure
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.lessLightGray,
                      side: BorderSide(
                        color: AppColors.lessLightGray,
                        width: 2.w,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(4.r),
                      ),
                      value: checkBoxValue,
                      onChanged: (value) {
                        setState(() {
                          checkBoxValue = !checkBoxValue;
                        });
                      },
                    ),
                    Text(
                      'Remember me',
                      style: TextStyles.font14RegularlessLightGray,
                    ),
                    Spacer(),
                    Text(
                      "Forgot Password?",
                      style: TextStyles.font13RegularBlue,
                    ),
                  ],
                ),
                verticalSpace(32),
                AppButton(buttonText: 'Login', onPressed: () {}),
                verticalSpace(24),
                TermsPrivacyText(),
                verticalSpace(24),
                TextAndTapedTextComponent(
                  mainText: "Don't have an account yet?",
                  pageText: "Sign Up ",
                  onTap: () {},
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
